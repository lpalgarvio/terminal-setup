#!/bin/bash

# Install software - Linux 4.x
sudo apt-get install -y linux-generic \
                                   linux-signed-generic;

# Install software - DKMS
sudo apt-get install -y dkms;

# Install software - FUSE
sudo apt-get install -y fuse;

