## Description

The FSE4AI project is designed for image processing and classification using a pretrained machine learning model. The project implements functions for data preprocessing, processing, and postprocessing.

## Instructions for Running the Project

### Clone the Repository
```bash
git clone https://github.com/GribanovDS/FSE4AI.git
cd FSE4AI
```

### Build the Docker Image
```bash
docker build -t my_project_image .
```

### Run the Docker Container
```bash
docker run -it --name my_project_container my_project_image
```

### Execute the Main Workflow
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
## Testing Functions

### To test the functionality of the project, use the following commands:
```bash
make build
make test
```

### Project Structure

- input_raw - folder for initial images
- input - folder for preprocessed images
- output_raw - folder for intermediate processing results
- output - folder for final postprocessed results

## Examples of Inputs

The input_raw directory provides example images for cats and dogs in JPEG format, used throughout the entire preprocess-process-postprocess chain.

![Image_input](https://github.com/GribanovDS/FSE4AI/blob/main/input_raw/Cat1.jpeg)

## Github Actions

You can find it in GitHub Actions section in this repo


