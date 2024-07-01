#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="olaninnovator/capstone-cloud-app:latest"

echo $dockerpath
# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy python-capstoneubemetesnew --image=$dockerpath
echo $dockerpath

## See the status
kubectl get deploy,rs,svc,pods

# Step 3:
# List kubernetes pods
kubectl get nodes

# Wait for the pod "busybox1" to contain the status condition of type "Ready"
#kubectl wait --for=condition=Ready pod/python-capstoneubemetes-6b8797d554-f6vw4 #"$(kubectl get pod -o name | grep planning-api)"

#aws-node-6l4pg
# Step 4:
# Forward the container port to a host
#echo kubectl wait --for=condition=Ready pod/python-capstoneubemetes-6b8797d554-f6vw4 # "$(kubectl get pod -o name | grep planning-api)" 
##kubectl port-forward pod/python-capstoneubemetesnew-6d454cc8b8-qvtgh --address  127.0.0.1 5002:5002