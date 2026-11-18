# Installation and Troubleshooting Notes

## Environment
- Ubuntu 26.04 on WSL2
- Architecture: x86_64
- Docker Desktop with WSL integration

## Kubernetes Installation
- Minikube installed using the official Linux binary.
- kubectl installed using the official Kubernetes APT repository.
- Helm installed using the Helm Debian APT repository.

## Troubleshooting
Initially, Docker was unavailable inside the Ubuntu WSL
distribution because WSL integration was not enabled.
Docker Desktop WSL integration was enabled and Docker
commands subsequently worked.

Minikube was configured with the Docker driver.

## Verification
Minikube started successfully.
The control-plane node reported Ready.
The Kubernetes API server and kubelet were running.
