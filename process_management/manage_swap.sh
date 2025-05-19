#!/bin/bash

# Script to add swap file

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or with sudo"
  exit 1
fi

if [ $# -lt 1 ]; then
  echo "Usage: sudo $0 size_in_MB"
  echo "Example: sudo $0 4096"
  exit 1
fi

SWAP_SIZE=$1

echo "Creating swap file of size ${SWAP_SIZE}MB..."
fallocate -l ${SWAP_SIZE}M /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile

echo "/swapfile none swap sw 0 0" >> /etc/fstab

echo "Swap added successfully!"
