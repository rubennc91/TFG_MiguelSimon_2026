import torch
import torch.nn as nn
import torch.nn.functional as F
import lightning as pl
import brevitas.nn as qnn # <-- AÑADIDO IMPORT DE BREVITAS

class GetModel:
    def __init__(self, model_path="./trained_models/mlp_27k.ckpt", device='cpu'):
        self.device = device
        self.base_model = CNNModule.load_from_checkpoint(model_path, map_location=device).to(device)
        self.base_model = self.base_model.model.eval()
        self.min_v, self.max_v = -1, 14
        self.min_w, self.max_w = -4, 4

    def __call__(self, x):
        with torch.no_grad():
            if self.device == 'cpu':
                x = torch.tensor(x).float().permute(2, 0, 1)[None, None, ...]
                y_hat = self.base_model(x).numpy()
                v, w = y_hat[0, 0, 0], y_hat[0, 0, 1]
                return self.unnormalize(v, w)
            else:
                x = torch.tensor(x).float().permute(2, 0, 1)[None, None, ...].to(self.device)
                y_hat = self.base_model(x).cpu().numpy()
                v, w = y_hat[0, 0, 0], y_hat[0, 0, 1]
                return self.unnormalize(v, w)

    def unnormalize(self, v, w):
        v = (self.max_v - self.min_v) * v + self.min_v
        w = (self.max_w - self.min_w) * w + self.min_w
        return v, w

# Define the MLP model CON BREVITAS
class MLPModel(nn.Module):
    def __init__(self, latent_features, dropout_rate=0.1, num_classes=2):
        super(MLPModel, self).__init__()

        # La entrada es de 576 (3*16*12)
        self.quant_input = qnn.QuantIdentity(bit_width=8, return_quant_tensor=True)

        # CAPA 1: De 576 a 256 (Paso suave, conservamos mucha info)
        self.fc1 = qnn.QuantLinear(576, 256, bias=True, weight_bit_width=8)
        self.relu1 = qnn.QuantReLU(bit_width=8)
        self.dropout1 = nn.Dropout(dropout_rate)
        
        # CAPA 2: De 256 a 128 (Extraemos características espaciales)
        self.fc2 = qnn.QuantLinear(256, 128, bias=True, weight_bit_width=8)
        self.relu2 = qnn.QuantReLU(bit_width=8)
        self.dropout2 = nn.Dropout(dropout_rate)

        # CAPA 3: De 128 a latent_features (256 por defecto en tus hparams)
        self.fx = qnn.QuantLinear(128, latent_features, bias=True, weight_bit_width=8)
        self.relu3 = qnn.QuantReLU(bit_width=8)

        # CAPA DE SALIDA: De latent_features a 2 (V y W)
        self.predictor = qnn.QuantLinear(latent_features, num_classes, bias=True, weight_bit_width=8)
        
        # Salida cuantizada a 8 bits
        self.quant_output = qnn.QuantIdentity(bit_width=8, return_quant_tensor=True)

    def forward(self, x, n_iter=1):
        x = self.quant_input(x)
        
        x = self.fc1(x)
        x = self.relu1(x)
        x = self.dropout1(x)
        
        x = self.fc2(x)
        x = self.relu2(x)
        x = self.dropout2(x)
        
        x = self.fx(x)
        x = self.relu3(x)
        
        x = self.predictor(x)
        x = self.quant_output(x)
        
        # Extraer el tensor de Brevitas
        if hasattr(x, 'value'):
            x = x.value
        elif isinstance(x, tuple):
            x = x[0]
            
        x = x.view(x.size(0), -1)

        return x

# LightningModule for training
class CNNModule(pl.LightningModule):
    def __init__(self, hparams):
        super(CNNModule, self).__init__()
        self.model = MLPModel(latent_features=hparams['latent_features'], dropout_rate=hparams['dropout'],
                              num_classes=hparams['num_classes'])
        self.on_step = False
        self.on_epoch = True
        self.save_hyperparameters(hparams)
        self.lda = hparams['lda']

    def forward(self, x):
        return self.model(x)

    def training_step(self, batch, batch_idx):
        images, targets = batch
        predictions = self(images)
        
        # Como procesamos fotogramas individuales (seq_len=1), no podemos 
        # calcular la diferencia a lo largo del tiempo. 
        # Así que eliminamos tv_v y tik_w.
        
        # Calculamos solo la pérdida L1 directa entre predicciones y targets
        loss = nn.L1Loss()(predictions, targets)
        v_loss = (predictions[:, 0] - targets[:, 0]).abs().mean()
        w_loss = (predictions[:, 1] - targets[:, 1]).abs().mean()

        self.log('train_loss', loss, on_step=self.on_step, on_epoch=self.on_epoch, prog_bar=True)
        self.log('train_v_loss', v_loss, on_step=self.on_step, on_epoch=self.on_epoch, prog_bar=True)
        self.log('train_w_loss', w_loss, on_step=self.on_step, on_epoch=self.on_epoch, prog_bar=True)
        # Ya no hacemos el log de reg_v_loss y reg_w_loss porque las hemos quitado
        
        return loss

    def validation_step(self, batch, batch_idx):
        images, targets = batch
        predictions = self(images)
        loss = nn.L1Loss()(predictions, targets)
        v_loss = (predictions[:, 0] - targets[:, 0]).abs().mean()
        w_loss = (predictions[:, 1] - targets[:, 1]).abs().mean()

        self.log('test_loss', loss, on_step=self.on_step, on_epoch=self.on_epoch, prog_bar=True)
        self.log('test_v_loss', v_loss, on_step=self.on_step, on_epoch=self.on_epoch, prog_bar=True)
        self.log('test_w_loss', w_loss, on_step=self.on_step, on_epoch=self.on_epoch, prog_bar=True)

        return loss

    def configure_optimizers(self):
        # Mantenemos Adam, pero le damos un pelín más de learning rate inicial
        optimizer = torch.optim.Adam(self.parameters(), lr=1e-3, weight_decay=1e-5)
        
        # Cambiamos a ReduceLROnPlateau (sin el argumento verbose)
        scheduler = torch.optim.lr_scheduler.ReduceLROnPlateau(
            optimizer, 
            mode='min',           # Queremos minimizar la pérdida
            factor=0.5,           # Si se atasca, divide el LR a la mitad
            patience=100,         # Espera 100 épocas sin mejora antes de bajar el LR
            min_lr=1e-6           # Límite mínimo del LR
        )
        
        return {
            "optimizer": optimizer,
            "lr_scheduler": {
                "scheduler": scheduler,
                "monitor": "train_loss" # Vigila la pérdida de entrenamiento
            }
        }