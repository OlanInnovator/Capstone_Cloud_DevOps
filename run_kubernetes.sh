#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="olaninnovator/capstone-cloud-app:latest"

echo $dockerpath
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy python-capstoneubemetes --image=$dockerpath
echo $dockerpath

## See the status
kubectl get deploy,rs,svc,pods

# Step 3:
# List kubernetes pods
kubectl get nodes

# Wait for the pod "busybox1" to contain the status condition of type "Ready"
kubectl wait --for=condition=Ready p"$(kubectl get pod -o name | grep planning-api)"

#aws-node-6l4pg
# Step 4:
# Forward the container port to a host
echo "$(kubectl get pod -o name | grep planning-api)" 
kubectl port-forward "$(kubectl get pod -o name | grep planning-api)" --address 0.0.0.0 5000:5000