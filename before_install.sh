#!/bin/bash

# Your ECR repository URI
ECR_REPO_URI="373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12"

# AWS CLI login to ECR
pip install --upgrade awscli
aws ecr get-login --no-include-email --region $AWS_DEFAULT_REGION > docker_login.sh
chmod +x docker_login.sh
./docker_login.sh

# Pull the Docker image
docker pull 373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12
