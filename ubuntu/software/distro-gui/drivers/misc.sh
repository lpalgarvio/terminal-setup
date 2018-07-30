#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y xserver-xorg-input-all \
                                   xserver-xorg-video-all \
                                   lshw-gtk;

# Verifications
$(which lshw) --version;

