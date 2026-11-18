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
Environment preparation in progress.

## Kubernetes Deployment

Successfully installed and configured:

- Minikube v1.39.0
- kubectl v1.37.2
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

### Application Deployment

An Nginx demonstration deployment was created
to verify Kubernetes workload scheduling.
