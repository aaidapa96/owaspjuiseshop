#!/bin/bash

# Your ECR repository URI
ECR_REPO_URI="373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12"

# AWS CLI login to ECR
$(aws ecr get-login --no-include-email --region your-region)

# Pull the Docker image
docker pull 373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12
