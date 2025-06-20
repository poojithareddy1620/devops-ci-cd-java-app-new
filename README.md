# DevOps CI/CD Java App

This repository contains a simple Java application built to demonstrate a full CI/CD pipeline using **GitHub Actions** and **Docker**. The project builds a Docker image, runs tests, and deploys the app locally or on an EC2 instance.

---

## Project Overview

- **App:** Simple Java "Hello from CI/CD Java App!" program.
- **Build Tool:** Maven (Java 11)
- **Containerization:** Docker
- **CI/CD:** GitHub Actions pipeline
- **Deployment:** Docker container running on EC2 or local machine

---

## Features

- Maven build and package
- Dockerfile for containerizing the Java app
- GitHub Actions workflow for:
  - Checking out code
  - Setting up JDK 11
  - Running Maven tests and packaging
  - Building and pushing Docker image to Docker Hub
- Deployment instructions for EC2 or local Docker environment

---

## Prerequisites

- Java 11 or higher
- Maven
- Docker installed locally or on EC2 instance
- GitHub account with a Personal Access Token (with `workflow` scope) for pushing workflow files
- Docker Hub account for pushing images

---

## How to Run Locally

1. Clone the repository:

   ```bash
   git clone https://github.com/poojithareddy1620/devops-ci-cd-java-app-new.git
   cd devops-ci-cd-java-aBuild the project with Maven:
**Build the project with Maven:**
mvn clean package
**Build the Docker image:**
docker build -t your_dockerhub_username/devops-ci-cd-java-app .
**Run the Docker container:**
docker run -p 8080:8080 your_dockerhub_username/devops-ci-cd-java-app

**GitHub Actions Workflow**
The workflow file .github/workflows/ci-cd.yml:

Runs on every push to main branch

Sets up Java 11 using Temurin distribution

Runs Maven build and tests

Builds the Docker image

Pushes Docker image to Docker Hub (requires secrets: DOCKER_USERNAME and DOCKER_PASSWORD)

**Deployment on AWS EC2**
Launch an EC2 instance (Amazon Linux 2) with Security Group allowing SSH (22) and app port (8080).
SSH into the instance.
Install Docker and start Docker service.
Pull your Docker image from Docker Hub:
docker pull your_dockerhub_username/devops-ci-cd-java-app
**Run the Docker container:**
docker run -d -p 8080:8080 your_dockerhub_username/devops-ci-cd-java-app
