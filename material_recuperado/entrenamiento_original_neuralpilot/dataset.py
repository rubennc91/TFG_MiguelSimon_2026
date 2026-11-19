import os
import csv
import torch
from torch.utils.data import Dataset, DataLoader
from torchvision import transforms
from PIL import Image
import numpy as np
import time
import pandas as pd

class F1DS(Dataset):
    def __init__(self, csv_file, seq_len = 32, transform=None):
        self.data = []
        self.transform = transform
        self.seq_len = seq_len
        with open(csv_file, 'r') as csvfile:
            csv_reader = csv.reader(csvfile)
            header = next(csv_reader)  

            for row in csv_reader:
                self.data.append(row)

    def __len__(self):
        return len(self.data*10)

    def __getitem__(self, idx):

        if torch.is_tensor(idx):
            idx = idx.tolist()

        idx = idx % len(self.data)

        folder, length_seq = self.data[idx]

        try:
            subidx = np.random.randint(0, int(length_seq) - self.seq_len - 1)
        except:
            print(self.seq_len)
            print(length_seq)
            
        images = []
        for i in range(self.seq_len):
            i += 1
            image_path = folder + '/'+str(subidx + i)+'.png'

            # --- LA PARTE MÁGICA DE LA IMAGEN ---
            # 1. Cargamos y aseguramos RGB y tamaño
            image = Image.open(image_path).convert("RGB")
            image = image.resize((16, 12)) 
            
            # 2. Pasamos a array y luego a NCHW (Canales, Alto, Ancho)
            img_array = np.array(image)
            img_nchw = np.transpose(img_array, (2, 0, 1))
            
            # 3. Lo convertimos a tensor FLOAT pero conservando los valores 0-255
            #    (Si aplicas transformaciones como AddGaussianNoise, se lo pasas aquí)
            img_tensor = torch.tensor(img_nchw, dtype=torch.float32)
            if self.transform:
                img_tensor = self.transform(img_tensor)
            
            images.append(img_tensor)
            
        images = torch.stack(images, dim=0)

        targets = torch.tensor(pd.read_csv(folder + '/data.csv').iloc[subidx:subidx+self.seq_len,1:].to_numpy(), dtype=torch.float32)

        # Add noise to targets
        targets = targets + 0.01*torch.randn_like(targets)
        
        # Normalización a 0, 1
        min_v, max_v = -1, 14
        min_w, max_w = -4, 4
        mins = torch.tensor([min_v, min_w])
        maxs = torch.tensor([max_v, max_w])
        targets = (targets - mins) / (maxs - mins)

        # Retornamos los tensores aplanados
        return images[0,...].reshape(-1), targets[0,...].reshape(-1)

if __name__ == "__main__":
    csv_file = 'all_data_path.csv'

    # Define transformations for image (you can customize these as needed)
    data_transform = transforms.Compose([
        transforms.ToTensor(),         # Convert to PyTorch tensor
        # transforms.Resize((120, 160)),  # Resize the image to the desired size
    ])

    custom_dataset = F1DS(csv_file, seq_len = 5, transform=data_transform)
    print(len(custom_dataset))
    dataloader = DataLoader(custom_dataset, batch_size=1, shuffle=True)


    start = time.time()


    for i, (images, csv_rows) in enumerate(dataloader):
        print(f"Batch {i + 1}")
        print("Images shape:", images.shape)
        print("CSV Rows shape:", csv_rows.shape)

    end = time.time()
    print((end - start)/len(dataloader))
# if __name__ == "__main__":
#
#     root_dir = "/raid/code/aabalo/hssr/spectralSR/DATA_org/imgsOriginal/train/"
#     train_composed = transforms.Compose([Normalize(param=5000),
#                                          CastToPrecision(precision=32),
#                                          transforms.ToTensor(),
#                                          transforms.RandomHorizontalFlip(p=0.5),
#                                          transforms.RandomVerticalFlip(p=0.5),
#                                          transforms.RandomRotation(degrees=90)
#                                          ])
#     ds = TrainHssrDataset(root_dir=root_dir, patch_size=(128, 128), transform=None)
#     # ds = HssrDataset(csv_file="hssr.csv", root_dir="/raid/code/aabalo/hssr/spectralSR/DATA_org/parches_prueba/", transform=train_composed)
#     dl = F1DS(ds, batch_size=4, shuffle=True, num_workers=0, drop_last=True)
#     epochs = 100
#     start_time = time.time()
#     for i in range(epochs):
#         for d in dl:
#             a = 0
#     end_time = time.time()
#     elapsed_time = (end_time - start_time)/epochs
#
#     print(f"Elapsed time: {elapsed_time} seconds")
#     print(1)