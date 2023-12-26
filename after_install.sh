# Stop and remove the existing container
docker stop mycont || true
docker rm mycont || true

# Run the Docker container
docker run -d -p 80:3000 --name mycont 373746118720.dkr.ecr.ap-south-1.amazonaws.com/owaspjuiceshoprepo:latest

zap.sh -cmd -quickurl http://ec2-35-154-219-106.ap-south-1.compute.amazonaws.com -quickprogress -quickout /home/ec2-user/owasp_zap_report.html

aws s3 cp /home/ec2-user/owasp_zap_report.html s3://mubuck12

