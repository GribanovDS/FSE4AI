# Define variables
DOCKER_IMAGE_NAME = final_project_image
CONTAINER_NAME = final_project_container

# Target: Build Docker image
build:
	@docker build -t $(DOCKER_IMAGE_NAME) .

# Target: Build Docker image
run:
	@docker run -it --name=$(CONTAINER_NAME) $(DOCKER_IMAGE_NAME)


# Target: Preprocess data
preprocess: run
	@echo "Starting data preprocessing..."
	@docker exec $(CONTAINER_NAME) python script.py --preprocess
	@echo "Data preprocessing completed."

# Target: Process data
process: run
	@echo "Starting data processing..."
	@docker exec $(CONTAINER_NAME) python script.py --process
	@echo "Data processing completed."

# Target: Postprocess data
postprocess: run
	@echo "Starting data postprocessing..."
	@docker exec $(CONTAINER_NAME) python script.py --postprocess
	@echo "Data postprocessing completed."


# Target: Remove the Docker container
clean:
	@echo "Removing Docker container..."
	@docker rm -f $(CONTAINER_NAME)
	@echo "Container $(CONTAINER_NAME) removed."
