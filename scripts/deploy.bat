@echo off

echo Stopping old container...
docker stop cicd-container
docker rm cicd-container

echo Tagging previous version...
docker tag cicd-app:v1 cicd-app:previous

echo Running new container...
docker run -d -p 9090:9090 --name cicd-container cicd-app:v1

echo Running health check...
call scripts\health-check.bat

IF %ERRORLEVEL% NEQ 0 (
    echo Deployment failed! Rolling back...
    call scripts\rollback.bat
    exit /b 1
) ELSE (
    echo Deployment successful!
)