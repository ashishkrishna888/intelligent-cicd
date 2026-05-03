@echo off

echo Rolling back to previous version...

docker stop cicd-container
docker rm cicd-container

docker run -d -p 9090:9090 --name cicd-container cicd-app:previous