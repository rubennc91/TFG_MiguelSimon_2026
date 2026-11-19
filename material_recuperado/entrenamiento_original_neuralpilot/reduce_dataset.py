import shutil
from PIL import Image

source_dir = "DATA"
destination_dir = "DATA_12_16"
# shutil.copytree(source_dir, destination_dir)

from tqdm import tqdm
import os
list_of_images = []
for root, dirs, files in os.walk(destination_dir):
    for file in tqdm(files):
        if file.endswith(".png"):
            im = Image.open(os.path.join(root, file))
            # im = im.resize([160, 120])
            im = im.resize([16, 12])
            # list_of_images.append(os.path.join(root, file))
            im.save(os.path.join(root, file))
            # print(os.path.join(root, file))

print(len(list_of_images))
