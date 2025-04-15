#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull ashadujjaman/simple-python-flask-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 --name my-flask-app ashadujjaman/simple-python-flask-app:latest
