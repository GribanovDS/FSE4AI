## Description

<img width="717" alt="Снимок экрана 2024-10-27 в 18 33 17" src="https://github.com/user-attachments/assets/ef34c434-2e41-4827-9feb-6ad0856e84ad">

The FSE4AI project is designed for image processing and classification using a pretrained machine learning model. The project implements functions for data preprocessing, processing, and postprocessing.

# Instructions for Running the Project

## Install all needed files

### Clone the Repository
```bash
git clone https://github.com/GribanovDS/FSE4AI.git
cd FSE4AI
```

## If you want to use it inside Docker image

If you do not want it, skip this part

### Build the Docker Image
```bash
docker build -t my_project_image .
```

### Run the Docker Container
```bash
docker run -it --name my_project_container my_project_image
```

## Build your software using Makefile

That will work if you are already inside docker container or started it manually 

### Build all dependencies and executables

Here you run preprocess, process and postprocess parts

```bash
make run
```
OR
```bash
make build
make preprocess
make process
make postprocess
```
## Other Functions

### Run tests
```bash
make build
make test
```

### Clean files
```bash
make clean
```

### Project Structure

- input_raw - folder for initial images
- input - folder for preprocessed images
- output_raw - folder for intermediate processing results
- output - folder for final postprocessed results

## Examples of Inputs

### Input for preprocessing

The input_raw directory provides example images for cats and dogs in JPEG format, used throughout the entire preprocess-process-postprocess chain.

![Image_input](https://github.com/GribanovDS/FSE4AI/blob/main/input_raw/Cat1.jpeg)

After preprocessing the image is resized to 128x128 format and being stored in input directory

<img width="1060" alt="Снимок экрана 2024-10-27 в 18 20 24" src="https://github.com/user-attachments/assets/89137726-f2a7-4c2c-8654-f52b23c52732">

### Input for processing 

Here it uses the resized picture from input directory in order to make classification on cats vs dogs

<img width="128" alt="Снимок экрана 2024-10-27 в 18 21 54" src="https://github.com/user-attachments/assets/110ed7f7-cd1f-41c0-95ba-51f52281955b">

After processing the resized image is converted in class prediction using model.h5 in output_raw directory as .txt file. It is either [[1. 0.]] or [[0. 1.]]

<img width="1072" alt="Снимок экрана 2024-10-27 в 18 23 28" src="https://github.com/user-attachments/assets/2af455a2-b849-438c-b920-4ebcf0b212d4">

### Input for postprocessing

Here it uses .txt file from output_raw and translates from model written format into readable by humans - whether it is cat or dog. For instance, it translates "[[1. 0.]]" into "Cat" and "[[0. 1.]]" into "Dog"

<img width="1071" alt="Снимок экрана 2024-10-27 в 18 23 17" src="https://github.com/user-attachments/assets/1bd41d7e-824b-45c7-b7a0-d9d74d010b30">

It stores the result of classification in output directory as .txt format

## Github Actions

You can find it in GitHub Actions section in this repo


