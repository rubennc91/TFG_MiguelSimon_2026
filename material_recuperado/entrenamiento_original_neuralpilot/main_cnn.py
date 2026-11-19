import os
import torch
from torch.utils.data import DataLoader
from torchvision import transforms
import lightning as pl
from lightning.pytorch.loggers import TensorBoardLogger

from dataset import F1DS  
from utils_pytorch import AddGaussianNoise
from cnn_model import CNNModel  

class CNNModule(pl.LightningModule):
    def __init__(self, hparams):
        super().__init__()
        self.save_hyperparameters(hparams)
        
        self.model = CNNModel(
            latent_features=self.hparams['latent_features'], 
            dropout_rate=self.hparams['dropout'], 
            num_classes=self.hparams['num_classes'], 
            weight_w=8
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

    def training_step(self, batch, batch_idx):
        x, y = batch
        preds = self(x)
        loss = self.loss_fn(preds, y)
        loss_v = self.loss_fn(preds[:, 0], y[:, 0])
        loss_w = self.loss_fn(preds[:, 1], y[:, 1])

        # Añadido prog_bar=True para que salga en consola
        self.log('train_loss', loss, prog_bar=True, sync_dist=True)
        self.log('train_v_loss', loss_v, prog_bar=True, sync_dist=True)
        self.log('train_w_loss', loss_w, prog_bar=True, sync_dist=True)
        return loss

    def validation_step(self, batch, batch_idx):
        x, y = batch
        preds = self(x)
        loss = self.loss_fn(preds, y)
        loss_v = self.loss_fn(preds[:, 0], y[:, 0])
        loss_w = self.loss_fn(preds[:, 1], y[:, 1])

        # Añadido prog_bar=True para que salga en consola
        self.log('test_loss', loss, prog_bar=True, sync_dist=True)
        self.log('test_v_loss', loss_v, prog_bar=True, sync_dist=True)
        self.log('test_w_loss', loss_w, prog_bar=True, sync_dist=True)
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