#!/bin/bash

# Fail if there's any error
set -eu

# Log in to your Docker Hub account
docker login --username $DOCKER_HUB_USERNAME --password $DOCKER_HUB_PASSWORD

# Tag the Docker image
docker tag $IMAGE_TAG $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAME

# Push the image to Docker Hub repository
docker push $DOCKER_HUB_USERNAME/$DOCKER_HUB_REPO_NAMEHere, we’ll create a buildspec file which is in YAML format. It is a collection of build commands and settings that CodeBuild uses to execute our Build jobs. To know more about it and how to write it, visit this link; https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html