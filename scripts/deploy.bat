@echo off

set IMAGE=yourusername/cicd-app:v1

echo Pulling latest image from Docker Hub...
docker pull %IMAGE%

echo Stopping old container...
docker stop cicd-container
docker rm cicd-container

echo Tagging previous version...
docker tag %IMAGE% cicd-app:previous

echo Running new container on port 9090...
docker run -d -p 9090:9090 --name cicd-container %IMAGE%

echo Waiting for app to start...
timeout /t 5

echo Running health check...
call scripts\health-check.bat

IF %ERRORLEVEL% NEQ 0 (
    echo Deployment failed! Rolling back...
    call scripts\rollback.bat
    exit /b 1
) ELSE (
    echo Deployment successful!
)