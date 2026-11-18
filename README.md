# DevOps Environment Setup

## Project Overview
This project documents the installation, configuration and
verification of a DevOps engineering environment using Ubuntu
on WSL2.

## Tools and Technologies

### Kubernetes
- Minikube
- kubectl
- Helm

### Cloud and Development
- AWS CLI
- Azure CLI
- Node.js
- npm
- jq

### Infrastructure and Configuration
- Terraform
- Ansible
- Docker
- Git

## Project Structure
- scripts/: Automated verification scripts
- reports/: Installation and verification reports
- screenshots/: Evidence of successful deployment
- documentation/: Installation and troubleshooting notes

## Operating Environment
- Ubuntu Linux on WSL2
- Docker as the Minikube driver

## Project Status
Environment setup and verification completed.

## Kubernetes Deployment

Successfully installed and configured:

- Minikube v1.39.0
- kubectl v1.36.1
- Helm v4.3.0
- Docker v29.9.2

### Local Cluster Configuration

- Driver: Docker
- Kubernetes version: v1.37.0
- Control-plane node: minikube
- CPUs allocated: 2
- Memory allocated: 3072 MB
- Container runtime: containerd

### Cluster Verification

The Minikube cluster started successfully.
The control-plane node reported Ready status.
The kubelet and API server were running.
kubectl was automatically configured to use Minikube.


## Environment Verification

Run the automated verification script using:

`./scripts/verify-tools.sh`

The script checks installed tool versions, operating system details, SSH permissions, Docker connectivity and Minikube status.

The generated report is saved to `reports/tooling-verification.txt`.

## Environment Configuration

A sample environment configuration is provided in `documentation/environment-config.sh`.

To load it into the current terminal session, run:

`source documentation/environment-config.sh`

## Security

The repository includes a `.gitignore` file to help prevent accidental commits of credentials, SSH keys, Terraform state and other sensitive files.

Never commit private keys, cloud credentials, access tokens or passwords.

## Installation Documentation

See `documentation/installation-notes.md` for installation methods, configuration details and troubleshooting notes.

## Submission Evidence

The following evidence files demonstrate the installation, configuration and verification of the DevOps environment.

### 1. Development Tools

- `screenshots/git-vscode-installation.png` — Git and Visual Studio Code installation and version checks.
- `screenshots/github-repository.png` — GitHub account and project repository evidence.

### 2. Cloud Account Setup

- `screenshots/aws-account-setup.png` — AWS Management Console account setup evidence.
- `screenshots/azure-account-setup.png` — Microsoft Azure Portal account setup evidence.

### 3. Cloud CLI Verification

- `screenshots/aws-azure-cli-versions.png` — AWS CLI and Azure CLI version output.
  - AWS CLI: 2.41.0
  - Azure CLI: 2.93.0

### 4. Kubernetes Cluster

- `screenshots/minikube-cluster.png` — Local Minikube cluster verification showing the control-plane node in Ready status.

### 5. Automated Tooling Verification

- `reports/tooling-verification.txt` — Automated verification report covering 14 installed tools, system information, Docker connectivity and Minikube status.

### 6. Git Version Control

The repository uses Git for version control. Meaningful commits document the project setup, Kubernetes configuration, environment verification and submission evidence.

To inspect the commit history, run:

`git log --oneline --decorate --graph -10`

The repository is hosted at:
https://github.com/Tonygold0/devops-environment-setup
