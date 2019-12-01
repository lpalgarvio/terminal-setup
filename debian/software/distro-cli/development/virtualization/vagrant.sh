#!/bin/bash

# Install software
sudo apt-get install -y vagrant \
                                   vagrant-lxc vagrant-libvirt;

# Verifications
$(which vagrant) --version;

