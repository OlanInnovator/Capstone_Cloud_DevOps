#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="capstone_Cloud_app:latest"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag capstone_Cloud_app $dockerpath
docker login

# Step 3:
# Push image to a docker repository
docker tag $dockerpath olaninnovator/capstone_Cloud_app
docker push olaninnovator/capstone_Cloud_app:latest