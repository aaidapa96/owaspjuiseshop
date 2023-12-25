#!/bin/bash

# Your ECR repository URI
ECR_REPO_URI="373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12"

# Stop and remove the existing container
docker stop your-container-name || true
docker rm your-container-name || true

# Run the Docker container
docker run -d -p 80:80 --name your-container-name 373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12
