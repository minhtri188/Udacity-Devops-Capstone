#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
projectname=project4
dockerpath=dovanthao2404/$projectname

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy $projectname --image=$dockerpath:v1.0.0

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/$projectname --address 0.0.0.0 80:80
