# Static Web Application CI/CD Pipeline

## Overview

This project demonstrates a CI/CD pipeline for deploying a static web application using Docker and GitLab CI/CD. The application is built, tested, and deployed to various environments, including review, staging, and production (ec2 instances are used for deploying)

The application used in this project is a static website example, available at: [https://github.com/diranetafen/static-website-example.git](https://github.com/diranetafen/static-website-example.git).


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

## Getting Started

### Prerequisites

Before setting up and running the CI/CD pipeline for this project, you need to ensure you have the following:

1. **Docker**: 
    - Docker is required to build, run, and deploy the application containers. 
    - Install Docker by following the instructions on the [Docker installation page](https://docs.docker.com/get-docker/).

2. **GitLab Account**:
    - A GitLab account is required to host your repository and use GitLab CI/CD for automating the pipeline.
    - If you don't have a GitLab account, you can create one at [GitLab](https://gitlab.com/users/sign_up).

3. **SSH Access Configured for Target servers**:
    - Add your SSH private key as a GitLab CI/CD variable. Navigate to your project’s `Settings` > `CI / CD` > `Variables` and add a variable named `SSH_PRIVATE_KEY`, with the value set to the contents of your private key (`id_rsa`).

### Setup
1. **fork the repository**
2. **Set Up GitLab CI/CD**:
    - Ensure the `.gitlab-ci.yml` file is present in the root of your repository. This file defines the CI/CD pipeline configuration.

3. **Configure Environment Variables**:
        - `EC2_HOST_REVIEW`: The IP address of your review environment server.
        - `EC2_HOST_DEPLOY`: The IP address of your staging/production server (if not set dynamically).

4. **Run the Pipeline**:
    - Push your code changes to GitLab. The CI/CD pipeline will be triggered automatically based on the `.gitlab-ci.yml` configuration.
    - Monitor the pipeline progress in the `CI / CD` > `Pipelines` section of your GitLab project.

## Maintainers

- Abdelhamid YOUNES

Feel free to reach out if you have any questions or need further assistance.