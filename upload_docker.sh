#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=gonzalob90/devops-udacity-p4

# Step 2:  
# Authenticate & tag
docker login
docker tag p4-udacity $dockerpath
echo "Docker ID and Image: $dockerpath"


# Step 3:
# Push image to a docker repository
docker push $dockerpath