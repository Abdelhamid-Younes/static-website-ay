# Static Web Application CI/CD Pipeline

## Overview

This project demonstrates a CI/CD pipeline for deploying a static web application using Docker and GitLab CI/CD. The application is built, tested, and deployed to various environments, including review, staging, and production ( i have used ec2 instances of aws).

## Project Structure

- `.gitlab-ci.yml`: Configuration file for GitLab CI/CD pipeline.
- `Dockerfile`: Dockerfile for building the static web application.

## CI/CD Pipeline

The CI/CD pipeline is defined in the `.gitlab-ci.yml` file and consists of several stages to automate the process of building, testing, and deploying the application.

### Pipeline Stages

1. **Build image**: Builds the Docker image for the application.
2. **Test acceptation**: Tests the built image.
3. **Release image**: Tags and pushes the Docker image to the registry.
4. **Deploy review**: Deploys the application to a review environment.
5. **Stop review**: Stops the review environment.
6. **Deploy staging**: Deploys the application to the staging environment.
7. **Test staging**: Tests the application in the staging environment.
8. **Deploy prod**: Deploys the application to the production environment.
9. **Test prod**: Tests the application in the production environment.

### Global Variables

- `APP_NAME`: The name of the application.
- `EC2_HOST_REVIEW`: The IP address for the review environment.
- `EC2_HOST_DEPLOY`: Dynamically set for staging and production deployments.