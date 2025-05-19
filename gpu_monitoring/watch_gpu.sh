#!/bin/bash

# Simple script to watch GPU usage every 2 seconds

if ! command -v nvidia-smi &> /dev/null; then
  echo "nvidia-smi not found, please install NVIDIA drivers and CUDA toolkit"
  exit 1
fi

echo "Watching GPU usage (press Ctrl+C to stop)..."
watch -n 2 nvidia-smi
