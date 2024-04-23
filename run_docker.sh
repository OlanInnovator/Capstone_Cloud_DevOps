#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t myapp_prod .
docker tag myapp_prod myapp_prod:latest

# Step 2: 
# List docker  images
docker image ls

# Step 3: 
# Run flask app
#docker run -p 8000:5001 myapp_prodsu
#docker run -it myapp_prodsu bash
docker run -it --rm --name mydocker myapp_prod
