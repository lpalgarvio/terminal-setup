#!/bin/bash

# Install software - Linux 5.x
sudo apt-get install -y linux-generic-hwe-18.04 \
                                   linux-signed-generic-hwe-18.04;

# Install software - DKMS
sudo apt-get install -y dkms;

# Install software - FUSE
sudo apt-get install -y fuse;

