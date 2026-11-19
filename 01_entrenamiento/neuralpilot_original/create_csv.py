import os
import csv

import pandas as pd
import numpy as np

def split_csv(input_file, output_file1, output_file2, split_ratio=0.8, seed=None):
    """
    Split a CSV file into two separate files based on the given split ratio.

    Parameters:
    - input_file (str): The path to the input CSV file.
    - output_file1 (str): The path to the first output CSV file.
    - output_file2 (str): The path to the second output CSV file.
    - split_ratio (float, optional): The proportion of data to be included in the first output file.
                                     The remaining data will be in the second output file.
                                     Defaults to 0.8.
    - seed (int or None, optional): Seed for random operations to provide reproducibility.
                                    Defaults to None.

    Returns:
    - None
    """
    # Set the seed for reproducibility
    if seed is not None:
        np.random.seed(seed)

    # Read the CSV file into a pandas DataFrame
    df = pd.read_csv(input_file)

    # Get the number of rows to include in the first output file
    split_index = int(len(df) * split_ratio)

    # Shuffle the DataFrame if seed is provided
    if seed is not None:
        df = df.sample(frac=1, random_state=seed)

    # Split the DataFrame into two based on the split ratio
    df1 = df[:split_index]
    df2 = df[split_index:]

    # Write the two DataFrames to separate CSV files
    df1.to_csv(output_file1, index=False)
    df2.to_csv(output_file2, index=False)



def list_image_paths_with_csv(directory_path, valid_extensions=['.jpg', '.jpeg', '.png']):
    data_per_folder = []

    for root, _, files in os.walk(directory_path):
        folder_image_paths = []  # List to store image paths for the current folder
        folder_csv_data = []  # List to store CSV data for the current folder

        for file in sorted(files):  # Sort the files in the folder
            if any(file.lower().endswith(ext) for ext in valid_extensions):
                folder_image_paths.append(os.path.join(root, file))
            if file.lower().endswith('.csv'):
                csv_path = os.path.join(root, file)
                with open(csv_path, 'r', newline='') as csvfile:
                    csv_reader = csv.reader(csvfile)
                    next(csv_reader, None)  # Skip the first row
                    for row in csv_reader:
                        folder_csv_data.append(row)

        if folder_image_paths:
            data_per_folder.append((root, folder_image_paths, folder_csv_data))

    return data_per_folder


def create_combined_csv(data_per_folder):
    with open('all_data_path.csv', 'w', newline='') as output_csv:
        csv_writer = csv.writer(output_csv)
        csv_writer.writerow(['Folder Sequence'] + ['Num of frames'] )

        for folder, image_paths, csv_data in data_per_folder:
            csv_writer.writerow([folder] + [len(image_paths)])


if __name__ == "__main__":
    directory_path = 'DATA_12_16'  # Replace with your main directory path
    folder_data = list_image_paths_with_csv(directory_path)
    #
    create_combined_csv(folder_data)
    #
    print("Combined CSV 'all_data_path.csv' has been created.")

    # Example usage:
    split_csv('all_data_path.csv', 'train.csv', 'test.csv', split_ratio=0.8, seed=42)
