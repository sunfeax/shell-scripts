#!/bin/bash
# Script to execute docker compose

DOCKER_PATH="~/docker-compose-lamp-master/"

echo "Running Docker Compose"
cd "$DOCKER_PATH" || { echo "Error: can't find Docker path"; exit 1; }
docker compose up -d

if [ $? -eq 0 ]; then
    echo "Docker Compose has been executed!"
else
    echo "Error."
fi
