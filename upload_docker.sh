#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 0:
# Load configurations
. ./cfg.sh

# Docker image parameters
path=udacity_devops_api
version=0.1

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=$username/$path;

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Get imageId from one tag, e.g., latest
imageId=$(docker images -q $dockerpath:latest)

docker login -u=$username -p=$docker_pwd
docker tag $imageId $dockerpath:$version

# Step 3:
# Push image to a docker repository
docker push $dockerpath