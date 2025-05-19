#!/bin/bash

# Simple script to format a USB drive with FAT32 and set label

if [ "$EUID" -ne 0 ]; then
  echo "Please run as root or with sudo"
  exit 1
fi

if [ $# -lt 2 ]; then
  echo "Usage: sudo $0 /dev/sdX LABEL"
  echo "Example: sudo $0 /dev/sdb MYUSB"
  exit 1
fi

DEVICE=$1
LABEL=$2

echo "Unmounting ${DEVICE}1..."
umount ${DEVICE}1

echo "Deleting existing partitions on ${DEVICE}..."
(
echo d # delete partition
echo w # write changes
) | fdisk ${DEVICE}

echo "Creating new partition on ${DEVICE}..."
(
echo n # new partition
echo p # primary
echo 1 # partition number 1
echo   # default first sector
echo   # default last sector (full size)
echo w # write changes
) | fdisk ${DEVICE}

echo "Formatting ${DEVICE}1 with FAT32 and label ${LABEL}..."
mkfs.vfat -F 32 -n ${LABEL} ${DEVICE}1

echo "Done! ${DEVICE}1 formatted with label ${LABEL}."
