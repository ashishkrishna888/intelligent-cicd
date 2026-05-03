@echo off

echo Rolling back to previous version...

docker stop cicd-container
docker rm cicd-container

echo Starting previous version on port 9090...
docker run -d -p 9090:9090 --name cicd-container cicd-app:previous

echo Rollback completed successfully.