# Intelligent CI/CD Pipeline 🚀

A complete **Intelligent CI/CD Pipeline** with automated build, Docker, Docker Hub, and **automatic rollback** on failure.

## Features

- ✅ Java 17 + Maven Application
- ✅ Docker Containerization
- ✅ Automated CI/CD using GitHub Actions
- ✅ Push to Docker Hub
- ✅ Health Check Monitoring
- ✅ **Automatic Rollback** on deployment failure
- ✅ Failure Simulation for Demo

## Project Structure
intelligent-cicd/
├── src/main/java/com/app/App.java
├── pom.xml
├── Dockerfile
├── .github/workflows/cicd.yml
├── scripts/
│   ├── deploy.bat
│   ├── health-check.bat
│   └── rollback.bat
└── README.md

## Tech Stack

- **Language**: Java 17
- **Build Tool**: Maven
- **Container**: Docker
- **CI/CD**: GitHub Actions
- **Registry**: Docker Hub

## How to Run Locally

### 1. Clone the Repository
```bash
git clone https://github.com/ashish0110/intelligent-cicd.git
cd intelligent-cicd

```
2. Build and Deploy
Bash# Build the project
mvn clean package

# Run deployment script
scripts\deploy.bat
3. Test Application

Health Endpoint: http://localhost:9090/health
Main Page: http://localhost:9090/

### Intelligent Features
Failure Simulation & Rollback
This project demonstrates intelligent rollback:

Set FAIL=true environment variable to simulate failure
Health check fails → Automatic rollback to previous stable version
Shows real production-grade resilience

### CI/CD Workflow

Push code to main branch
GitHub Actions automatically builds JAR
Builds Docker image
Pushes image to Docker Hub (ashish0110/cicd-app:v1)
Ready for deployment

Docker Hub
Image: ashish0110/cicd-app



Normal Deployment Success
Failure Simulation + Auto Rollback

Future Enhancements

Kubernetes deployment
AWS / Azure integration
Monitoring with Prometheus + Grafana
Blue-Green Deployment


Made with ❤️ for Project Demonstration
