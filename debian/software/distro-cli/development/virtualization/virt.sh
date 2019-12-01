#!/bin/bash

# Install software
sudo apt-get install -y virtinst \
                                   virt-goodies \
                                   virt-top;

# Verifications
$(which virt-admin) --version;
$(which virt-top) --help;

# Configuration
sudo systemctl enable libvirtd;
sudo service libvirtd stop;
sudo usermod -aG libvirt $USER;
sudo service libvirtd start;

