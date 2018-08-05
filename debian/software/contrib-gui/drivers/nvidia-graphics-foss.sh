#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y xserver-xorg-video-nouveau;

# Remove software
sudo apt-get remove --purge -y nvidia-*;

