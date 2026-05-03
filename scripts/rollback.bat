@echo off

echo Rolling back...

docker stop cicd-container
docker rm cicd-container

docker run -d -p 9090:9090 --name cicd-container cicd-app:previous

echo Rollback completed.