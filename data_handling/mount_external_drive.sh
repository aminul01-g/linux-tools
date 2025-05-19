#!/bin/bash

# Script to mount an external drive

if [ $# -lt 2 ]; then
  echo "Usage: sudo $0 /dev/sdX1 /mnt/point"
  exit 1
fi

DEVICE=$1
MOUNT_POINT=$2

echo "Creating mount point ${MOUNT_POINT} if not exists..."
mkdir -p ${MOUNT_POINT}

echo "Mounting ${DEVICE} to ${MOUNT_POINT}..."
mount ${DEVICE} ${MOUNT_POINT}

echo "Done!"
