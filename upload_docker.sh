#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 0:
# Load configurations
. ./cfg.sh
. ./parameters.sh

# Step 1:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Get imageId from one tag, e.g., latest
imageId=$(docker images -q $dockerpath:latest)

docker login -u=$username -p=$docker_pwd
docker tag $imageId $dockerpath:$version

# Step 2:
# Push image to a docker repository
docker push $dockerpath