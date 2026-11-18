#!/usr/bin/env bash

# DevOps Environment Verification Script
# Generates reports/tooling-verification.txt

set +e

# Load NVM in non-interactive verification shells
export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPORT="$PROJECT_DIR/reports/tooling-verification.txt"

mkdir -p "$PROJECT_DIR/reports"

{
    echo "=================================================="
    echo "       DEVOPS ENVIRONMENT VERIFICATION REPORT"
    echo "=================================================="
    echo "Date: $(date)"
    echo "User: $(whoami)"
    echo "Hostname: $(hostname)"
    echo "Architecture: $(uname -m)"
    echo ""

    echo "===== OPERATING SYSTEM ====="
    cat /etc/os-release | grep -E '^(PRETTY_NAME|VERSION_ID)='
    echo ""

    echo "===== TOOL VERSION CHECKS ====="

    check_tool() {
        TOOL="$1"
        VERSION_COMMAND="$2"

        echo ""
        echo "--- $TOOL ---"

        if command -v "$TOOL" >/dev/null 2>&1; then
            eval "$VERSION_COMMAND" 2>&1
            echo "Status: INSTALLED"
        else
            echo "Status: NOT INSTALLED"
        fi
    }

    check_tool git "git --version"
    check_tool docker "docker --version"
    check_tool minikube "minikube version"
    check_tool kubectl "kubectl version --client"
    check_tool helm "helm version --short"
    check_tool aws "aws --version"
    check_tool az "az version --query '\"azure-cli\"' -o tsv"
    check_tool node "node --version"
    check_tool npm "npm --version"
    check_tool nvm "nvm --version"
    check_tool jq "jq --version"
    check_tool terraform "terraform --version"
    check_tool ansible "ansible --version"
    check_tool python3 "python3 --version"

    echo ""
    echo "===== SYSTEM AND USER SECURITY ====="

    echo "Current user:"
    id

    echo ""
    echo "Current umask:"
    umask

    echo ""
    echo "SSH directory permissions:"
    if [ -d "$HOME/.ssh" ]; then
        stat -c '%a %A %n' "$HOME/.ssh"
    else
        echo "SSH directory not found"
    fi

    echo ""
    echo "SSH private key permissions:"
    if [ -d "$HOME/.ssh" ]; then
        find "$HOME/.ssh" -maxdepth 1 -type f \
            -name 'id_*' ! -name '*.pub' \
            -exec stat -c '%a %A %n' {} \;
    fi

    echo ""
    echo "Git repository status:"
    git -C "$PROJECT_DIR" status --short --branch

    echo ""
    echo "===== KUBERNETES STATUS ====="

    if command -v minikube >/dev/null 2>&1; then
        minikube status 2>&1

        if minikube status 2>&1 | grep -q 'host: Running'; then
            echo ""
            echo "Kubernetes nodes:"
            kubectl get nodes -o wide 2>&1
        else
            echo "Cluster is currently stopped or unavailable."
        fi
    else
        echo "Minikube is not installed."
    fi

    echo ""
    echo "===== DOCKER STATUS ====="

    if command -v docker >/dev/null 2>&1; then
        docker info --format 'Docker server version: {{.ServerVersion}}' 2>&1
    fi

    echo ""
    echo "===== VERIFICATION COMPLETE ====="
    echo "Report generated: $REPORT"
    echo "=================================================="

} 2>&1 | tee "$REPORT"

echo ""
echo "Verification report saved to:"
echo "$REPORT"
