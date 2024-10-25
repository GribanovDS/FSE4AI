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

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/GribanovDS/FSE4AI.git
   cd FSE4AI

2. **Use make build**:
   ```bash
    make build

3. **Use make run**:
   ```bash
    make run

4. **Use make preprocess**:
   ```bash
    make preprocess

5. **Use make process**:
   ```bash
    make process

6. **Use make postprocess**:
   ```bash
    make postprocess
