#!/bin/bash

# Setup Python environment for AI development

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or with sudo"
  exit 1
fi

echo "Updating package list..."
apt update

echo "Installing Python3, pip, virtualenv..."
apt install -y python3 python3-pip python3-venv

echo "Installing popular AI/ML packages in user space..."
pip3 install --user numpy pandas scikit-learn matplotlib jupyter torch tensorflow

echo "Setup complete!"
