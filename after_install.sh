# Stop and remove the existing container
docker stop mycont || true
docker rm mycont || true

# Run the Docker container
docker run -d -p 80:3000 --name mycont 373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12
