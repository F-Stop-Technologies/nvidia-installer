#!/bin/bash

# Check if NVIDIA card is present
if lspci | grep -i NVIDIA; then
  echo "NVIDIA card detected. Installing NVIDIA drivers..."
  sudo apt update
  sudo apt install -y nvidia-driver
else
  echo "No NVIDIA card detected. Not installing NVIDIA drivers..."
fi
