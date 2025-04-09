#!/bin/bash
set -e

# Get the container name (last column in docker ps output)
CONTAINER_NAME=$(sudo docker ps | awk 'NR > 1 {print $NF}')

# Stop and remove the running container (if any)
if [ -n "$CONTAINER_NAME" ]; then
    sudo docker rm -f "$CONTAINER_NAME"
else
    echo "No running container found."
fi
