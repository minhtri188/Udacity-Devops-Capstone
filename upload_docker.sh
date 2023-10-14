#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
projectname=captone-app-final
dockerpath=dovanthao2404/$projectname
docker tag $projectname $dockerpath

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Step 3:
# Push image to a docker repository
docker push $dockerpath