sudo yum install docker -y
sudo systemctl start docker
sudo docker build -t eks-base/api:1.0.0 --build-arg JAR_FILE=build/libs/backend-app-1.0.0.jar .