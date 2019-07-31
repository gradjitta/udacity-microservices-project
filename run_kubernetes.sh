#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 0:
# Load configurations
. ./cfg.sh
. ./parameters.sh


# Step 1:
# Run the Docker Hub container with kubernetes
kubectl run $path --image=$dockerpath --port=$PORT

# Step 2:
# List kubernetes pods
kubectl get pods

# Step 3:
# Forward the container port to a host
kubectl port-forward $path 8000:80

