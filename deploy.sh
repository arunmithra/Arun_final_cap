#!/bin/bash

DOCKER_USERNAME="arundockerhub2024"
DOCKER_PASSWORD="dckr_pat_VSckYH1eVrxbzFBqN0dxbSozN2E"
DOCKER_REPO="prod"
DOCKER_TAG="latest"

echo "Logging in to Docker Hub..."
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

LOCAL_IMAGE="arun_capstone_proj"

echo "Tagging the Docker image..."
docker tag "${LOCAL_IMAGE}" "$DOCKER_USERNAME/${DOCKER_REPO}:${DOCKER_TAG}"


echo "Pushing the Docker image to Docker Hub..."
docker push "$DOCKER_USERNAME/${DOCKER_REPO}:${DOCKER_TAG}"

echo "Deployment to Docker Hub completed successfully."

docker-compose up -d
