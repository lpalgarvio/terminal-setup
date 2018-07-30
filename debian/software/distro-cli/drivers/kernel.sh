#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software - Linux 4.4
sudo apt-get install -y linux-generic \
                                   linux-signed-generic;

# Install software - Linux 4.10
sudo apt-get install -y linux-kernel-generic;

# Install software - DKMS
sudo apt-get install -y dkms;

# Install software - FUSE
sudo apt-get install -y fuse;

