import os
import torch
from torch.utils.data import DataLoader
from torchvision import transforms
import lightning as pl
from lightning.pytorch.loggers import TensorBoardLogger

from dataset import F1DS  # Import CustomDataset from dataset.py
from utils_pytorch import AddGaussianNoise

from model import CNNModule 

if __name__ == "__main__":
    # Define hyperparameters and data paths
    hparams = {
        "learning_rate": 0.0005,
        "batch_size": 8,
        "num_workers": 0, # Puesto a 0 para evitar problemas en Windows
        "num_classes": 2,
        'max_epochs': 150, # Puedes ajustar esto
        'dropout': 0.05,
        'latent_features': 256,
        'da': 1,
        'lda': 5e-3,
        'std_noise': 0.02
    }

    data_dir = './DATA_12_16'
    csv_train = 'train.csv'
    csv_test = 'test.csv'

    # Define transformations for image SIN ToTensor
    if hparams['da']:
        data_train_transform = transforms.Compose([
            AddGaussianNoise(0., hparams['std_noise']),         # add noise
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

    # Initialize the Lightning module
    cnn_module = CNNModule(hparams)

    logger = TensorBoardLogger(save_dir="logs", name="ltc")

    checkpoint_callback = pl.pytorch.callbacks.ModelCheckpoint(dirpath=logger.log_dir+'/checkpoints', save_top_k=1, monitor="test_loss")
    lr_callback = pl.pytorch.callbacks.LearningRateMonitor(logging_interval='epoch')
    
    # Initialize a PyTorch Lightning Trainer
    trainer = pl.Trainer(logger=logger,
                         max_epochs=hparams['max_epochs'],
                         accelerator='cpu', # Para forzar entrenamiento en CPU
                         callbacks=[checkpoint_callback, lr_callback],
                         check_val_every_n_epoch = 1
                         )

    # Train the model
    print("Iniciando entrenamiento...")
    trainer.fit(cnn_module, train_loader, test_loader)
    print("Entrenamiento completado.")

    # GUARDAR EL MODELO .pth PARA FINN
    print("Guardando el modelo para exportar a FINN...")
    model_to_save = cnn_module.model
    torch.save(model_to_save.state_dict(), "state_dict_quantized.pth")
    print("¡Modelo 'state_dict_quantized.pth' guardado con éxito!")