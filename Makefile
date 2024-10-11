# Define variables for username, repository, and tag
USERNAME=shaharalaila
IMAGE_NAME=welcome-app
TAG=0.0.1

# Default target to build and push Docker image
all: build push

# Docker build target
build:
	docker build -t $(USERNAME)/$(IMAGE_NAME):$(TAG) .

# Docker push target
push:
	docker push $(USERNAME)/$(IMAGE_NAME):$(TAG)

# Clean target (optional, if you want to remove the local image)
clean:
	docker rmi $(USERNAME)/$(IMAGE_NAME):$(TAG)
