#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y libvirt-bin virtinst \
                                   virt-goodies \
                                   virt-top virt-viewer;

# Verifications
$(which virt-admin) --version;

# Configuration
sudo systemctl enable libvirt-bin;
sudo service libvirt-bin stop;
sudo usermod -aG libvirtd $USER;
sudo service libvirt-bin start;

