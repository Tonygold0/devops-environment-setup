#!/usr/bin/env bash

# DevOps Environment Configuration
# Ubuntu 26.04 running on WSL2

# User-level executable paths
export PATH="$HOME/.local/bin:$PATH"

# NVM configuration
export NVM_DIR="$HOME/.nvm"

if [ -s "$NVM_DIR/nvm.sh" ]; then
    . "$NVM_DIR/nvm.sh"
fi

# Node.js default version is managed through NVM.
# Kubernetes context can be checked with:
# kubectl config current-context
