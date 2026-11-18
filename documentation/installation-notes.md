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

## Completed Environment Setup

### Operating System
- Ubuntu 26.04.1 LTS
- WSL2
- Architecture: x86_64

### Installation Methods

| Tool | Installation method |
|---|---|
| Git | Ubuntu APT |
| Docker | Docker Desktop with WSL integration |
| Minikube | Official binary |
| kubectl | Kubernetes APT repository |
| Helm | Official Helm APT repository |
| AWS CLI | AWS official installer |
| Azure CLI | Microsoft APT repository |
| Node.js | NVM |
| npm | Installed alongside Node.js |
| jq | Ubuntu APT |
| Terraform | HashiCorp APT repository |
| Ansible | pipx |
| Python | Ubuntu environment |

### Troubleshooting

1. Docker was initially unavailable inside WSL2.
   - Enabled Ubuntu integration in Docker Desktop.
   - Restarted WSL to establish Docker connectivity.

2. Minikube cluster setup:
   - Used the Docker driver.
   - Allocated 2 CPUs and 3072 MB memory.
   - Kubernetes node successfully reached Ready status.
   - Cluster was stopped after successful verification.

3. GitHub SSH authentication:
   - Generated a separate SSH key for GitHub.
   - Registered its public key with GitHub.
   - Confirmed successful SSH authentication.

4. NVM verification:
   - NVM was installed but was not initially detected by the verification script.
   - Loaded the NVM initialisation script explicitly during verification.

### Security Practices

- SSH directory permission: 700.
- SSH private key permissions: 600.
- Private keys and credentials are excluded from Git.
- Terraform state and plan files are excluded from Git.
- AWS and Azure credentials must remain outside the repository.

### Verified Tool Versions

The following versions were detected during environment verification:

| Tool | Verified version |
|---|---|
| Git | 2.53.0 |
| Docker | 29.9.2 |
| Minikube | 1.39.0 |
| kubectl | 1.36.1 |
| Helm | 4.3.0 |
| AWS CLI | 2.41.0 |
| Azure CLI | 2.93.0 |
| Node.js | 26.13.1 |
| npm | 11.20.0 |
| NVM | 0.40.3 |
| jq | 1.8.1 |
| Terraform | 1.17.2 |
| Ansible | 2.22.0 |
| Python | 3.14.4 |

### Additional Configuration

- Node.js versions are managed using NVM.
- Ansible was installed using pipx.
- Terraform was installed using the HashiCorp APT repository.
- AWS CLI was installed using the official AWS installer.
- Azure CLI was installed using Microsoft's APT repository.
- jq was installed using Ubuntu APT.

### Final Verification Status

- All 14 required tools were detected by the verification script.
- Docker connectivity was confirmed.
- SSH directory and private key permissions were checked.
- Minikube successfully started and its control-plane node reached Ready status.
- Minikube was subsequently stopped to conserve system resources.
- The verification report is available at reports/tooling-verification.txt.
