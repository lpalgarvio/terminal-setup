#!/bin/bash
# https://forums.linuxmint.com/viewtopic.php?t=226145
# https://askubuntu.com/questions/582111/ubuntu-14-04-1-strange-color-depth
# https://ubuntuforums.org/showthread.php?t=2201820
#
# Disable Secure Boot !!!
#

# Repositories and keys
sudo add-apt-repository ppa:graphics-drivers
sudo apt-get update;

# Install software
sudo apt-get install -y nvidia-396 nvidia-opencl-icd-396 \
                                   nvidia-prime nvidia-settings;

