#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=gonzalob90/devops-udacity-p4

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run p4-udacity-app\
    --image=$dockerpath\
    --port=80 --labels app=p4-udacity-app

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward p4-udacity-app 8000:80
