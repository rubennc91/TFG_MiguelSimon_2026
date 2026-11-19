import os
import torch
from torch.utils.data import DataLoader
from torchvision import transforms
import lightning as pl
from lightning.pytorch.loggers import TensorBoardLogger

from dataset import F1DS  
from utils_pytorch import AddGaussianNoise
from cnn_model import CNNModel  
from model import MLPModel

import torch.nn as nn
import math

class CNNModule(pl.LightningModule):
    def __init__(self, hparams):
        super().__init__()
        self.save_hyperparameters(hparams)
        
        self.model = MLPModel(
            latent_features=self.hparams['latent_features'], 
            dropout_rate=self.hparams['dropout'], 
            num_classes=self.hparams['num_classes']
        )
        self.loss_fn = torch.nn.MSELoss()

    def forward(self, x):
        return self.model(x)

    def configure_optimizers(self):
        optimizer = torch.optim.Adam(self.parameters(), lr=1e-3, weight_decay=1e-5)
        scheduler = torch.optim.lr_scheduler.ReduceLROnPlateau(
            optimizer, mode='min', factor=0.5, patience=50, min_lr=1e-6           
        )
        return {
            "optimizer": optimizer,
            "lr_scheduler": {"scheduler": scheduler, "monitor": "train_loss"}
        }
        
    def normalize_targets(self, targets):
        # targets[:, 0] es V, targets[:, 1] es W
        v = targets[:, 0]
        w = targets[:, 1]
        
        # Límites
        v_min, v_max = -0.6, 13.0
        
        v_norm = 2.0 * ((v - v_min) / (v_max - v_min)) - 1.0
        w_norm = w / math.pi
        
        # Volvemos a apilar en un tensor de la misma forma
        return torch.stack((v_norm, w_norm), dim=1)

    def training_step(self, batch, batch_idx):
        images, targets = batch
        
        # 1. Normalizar los valores reales (targets)
        targets_norm = self.normalize_targets(targets)
        
        # 2. Obtener predicciones (saldrán entre -1 y 1 gracias al QuantHardTanh)
        predictions = self(images)
        
        # 3. Calcular la pérdida sobre los valores normalizados
        loss = nn.L1Loss()(predictions, targets_norm)
        v_loss = (predictions[:, 0] - targets_norm[:, 0]).abs().mean()
        w_loss = (predictions[:, 1] - targets_norm[:, 1]).abs().mean()

        self.log('train_loss', loss, on_step=True, on_epoch=True, prog_bar=True)
        self.log('train_v_loss', v_loss, on_step=True, on_epoch=True, prog_bar=True)
        self.log('train_w_loss', w_loss, on_step=True, on_epoch=True, prog_bar=True)
        
        return loss

    def validation_step(self, batch, batch_idx):
        images, targets = batch
        
        # 1. ¡CRÍTICO! Normalizar también en validación
        targets_norm = self.normalize_targets(targets)
        
        # 2. Obtener predicciones
        predictions = self(images)
        
        # 3. Calcular errores contra targets_norm, NO contra targets
        loss = torch.nn.L1Loss()(predictions, targets_norm)
        v_loss = (predictions[:, 0] - targets_norm[:, 0]).abs().mean()
        w_loss = (predictions[:, 1] - targets_norm[:, 1]).abs().mean()

        self.log('test_loss', loss, on_step=False, on_epoch=True, prog_bar=True)
        self.log('test_v_loss', v_loss, on_step=False, on_epoch=True, prog_bar=True)
        self.log('test_w_loss', w_loss, on_step=False, on_epoch=True, prog_bar=True)
        
        return loss


if __name__ == "__main__":
    hparams = {
        "learning_rate": 0.0005,
        "batch_size": 8,
        "num_workers": 0, 
        "num_classes": 2,
        'max_epochs': 1000, # Para esta CNN "pluma" será suficiente
        'dropout': 0.05,
        'latent_features': 16, # Ajustado a nuestra nueva CNN
        'da': 1,
        'lda': 5e-3,
        'std_noise': 0.02
    }

    data_dir = './DATA_12_16'
    csv_train = 'train.csv'
    csv_test = 'test.csv'

    if hparams['da']:
        data_train_transform = transforms.Compose([
            AddGaussianNoise(0., hparams['std_noise']),         
        ])
        data_test_transform = None
    else:
        data_train_transform = None
        data_test_transform = None

    train_dataset = F1DS(csv_train, seq_len=1, transform=data_train_transform)
    test_dataset = F1DS(csv_test, seq_len=1, transform=data_test_transform)

    train_loader = DataLoader(train_dataset, batch_size=hparams['batch_size'], shuffle=True, num_workers=hparams['num_workers'], pin_memory=False, drop_last=True)
    test_loader = DataLoader(test_dataset, batch_size=hparams['batch_size'], shuffle=False, num_workers=hparams['num_workers'], pin_memory=False)

    hparams['num_train_batches'] = len(train_loader)
    hparams['num_test_batches'] = len(test_loader)

    cnn_module = CNNModule(hparams)
    logger = TensorBoardLogger(save_dir="logs", name="ltc")
    checkpoint_callback = pl.pytorch.callbacks.ModelCheckpoint(dirpath=logger.log_dir+'/checkpoints', save_top_k=1, monitor="test_loss")
    lr_callback = pl.pytorch.callbacks.LearningRateMonitor(logging_interval='epoch')
    
    trainer = pl.Trainer(logger=logger,
                         max_epochs=hparams['max_epochs'],
                         accelerator='cpu', 
                         callbacks=[checkpoint_callback, lr_callback],
                         check_val_every_n_epoch = 1
                         )

    print("Iniciando entrenamiento...")
    trainer.fit(cnn_module, train_loader, test_loader)
    print("Entrenamiento completado.")

    print("Guardando el modelo para exportar a FINN...")
    model_to_save = cnn_module.model
    torch.save(model_to_save.state_dict(), "state_dict_quantized.pth")
    print("¡Modelo 'state_dict_quantized.pth' guardado con éxito!")