#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 0:
# Load configurations
. ./cfg.sh
. ./parameters.sh


# Step 1:
# Run the Docker Hub container with kubernetes
kubectl run $path --env="PORT=$PORT" --image=$dockerpath --port=$PORT

# Step 2:
# List kubernetes pods
kubectl get pods

# Get pod name:
podName=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}' | grep $path | head -1)

# Step 3:
# Forward the container port to a host
kubectl port-forward $podName $LOCAL_PORT:$PORT

