# Week 1: CI/CD with GitHub Actions – Flask App

## 📌 Overview

This project demonstrates a basic CI/CD pipeline using GitHub Actions for a Python Flask application. The pipeline automates testing, building, and deploying a Dockerized Flask app to Docker Hub.

## 🛠️ Tech Stack

- Python 3.9
- Flask
- Docker
- GitHub Actions
- Docker Hub

## 📁 Project Structure

week-01-ci-cd-github-actions/
├── app/
│ ├── app.py
│ └── requirements.txt
├── Dockerfile
└── .github/
└── workflows/
└── ci.yml


- `app/app.py`: Main Flask application.
- `app/requirements.txt`: Python dependencies.
- `Dockerfile`: Instructions to containerize the Flask app.
- `.github/workflows/ci.yml`: GitHub Actions workflow for CI/CD.

## 🚀 Getting Started

### Prerequisites

- Docker installed
- GitHub account
- Docker Hub account

### Running Locally

1. Clone the repository:
   ```bash
   git clone https://github.com/daraye-tech/devops-journey.git
   cd devops-journey/week-01-ci-cd-github-actions
Build the Docker image:


docker build -t flask-app:latest .
Run the Docker container:


docker run -d -p 5000:5000 flask-app:latest
Access the application at http://localhost:5000.

🔄 CI/CD Pipeline
The GitHub Actions workflow (ci.yml) automates the following steps on each push to the main branch:

Checkout the repository

Set up Python environment

Install dependencies

Run tests (if any)

Build the Docker image

Log in to Docker Hub using secrets:

DOCKER_USERNAME

DOCKER_PASSWORD

Push the Docker image to Docker Hub

🔐 Setting Up Secrets
To enable Docker Hub integration:

Go to your GitHub repository

Navigate to Settings > Secrets and variables > Actions

Click New repository secret

Add:

DOCKER_USERNAME: Your Docker Hub username

DOCKER_PASSWORD: Your Docker Hub password or token

✅ Outcome
Upon successful execution, your Dockerized Flask application will be built and pushed to Docker Hub automatically on every push to main.

---

Paste that clean version into your `README.md`, commit, and push. Once done, let me know — 
