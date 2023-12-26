sudo service codedeploy-agent start
sudo service docker start

sudo usermod -aG docker $USER
sudo aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12:latest > docker_login.sh
chmod +x docker_login.sh

docker pull 373746118720.dkr.ecr.ap-south-1.amazonaws.com/owasp12
