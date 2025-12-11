#!/bin/bash

# Script to execute docker compose

DOCKER_PATH="/home/a13503782/DAW2/Entorno Servidor/docker-compose-lamp-master"

konsole -e bash -c "
echo '📁 Working directory: $DOCKER_PATH'
cd \"$DOCKER_PATH\" || { echo '❌ Error: directory not found'; read -p 'Press Enter'; exit 1; }

echo '🔍 Checking Docker Compose status...'
PROJECT_NAME=\$(basename \"$DOCKER_PATH\")
RUNNING=\$(docker compose ps --status running --format '{{.Service}}')

if [ -n \"\$RUNNING\" ]; then
    echo '🚫 Containers are already running:'
    docker compose ps
    echo
    echo '➡ Stopping the stack (docker compose down)...'
    docker compose down
    echo '✔ Stopped.'
else
    echo '▶ Starting the stack (docker compose up)...'
    docker compose up
    echo
    echo '✔ Stack exited. If this is unexpected, check logs above.'
fi

echo
read -p 'Press Enter to exit the terminal'
"
