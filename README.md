# FSE4AI
This is repo for Skoltech course “Foundation of Software Engineering for AI” 2024-2025

# Cat vs. Dog Image Classifier

This project is a machine learning pipeline designed to classify images of cats and dogs. It provides preprocessing, processing, and postprocessing functionalities using both Makefile and Docker. The pipeline leverages a pre-trained machine learning model (`model.h5`) and includes instructions for setting up and using the software.

---

## Table of Contents

1. [Setup Instructions](#setup-instructions)
   - [Prerequisites](#prerequisites)
   - [Installation](#installation)

---

## Setup Instructions

### Prerequisites

To use this software, ensure you have the following installed:
- **Docker**: [Docker Installation Guide](https://docs.docker.com/get-docker/)
- **Make**: Installed on most Unix-based systems, or use [GNU Make](https://www.gnu.org/software/make/) for Windows.

### Installation

0. Download the model:

wget https://drive.google.com/uc?id=1EPZ8vyr43HHFk6an0erejU2d2X5hLGrs&export=download -O model.h5

2. **Clone the Repository**:
   ```bash
   git clone https://github.com/GribanovDS/FSE4AI.git
   cd FSE4AI

3. **Use make build**:
   ```bash
    make build

4. **Use make run**:
   ```bash
    make run

5. **Use make preprocess**:
   ```bash
    make preprocess

6. **Use make process**:
   ```bash
    make process

7. **Use make postprocess**:
   ```bash
    make postprocess
