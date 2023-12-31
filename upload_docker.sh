#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=minhtri188/devops-capstone

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u minhtri188 -p Griffins@123
docker tag devops-capstone $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
