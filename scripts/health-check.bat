@echo off

curl -f http://localhost:9090/health

IF %ERRORLEVEL% NEQ 0 (
    echo Health check failed!
    exit /b 1
) ELSE (
    echo Health check passed!
)