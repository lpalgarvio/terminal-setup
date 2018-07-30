#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y libvirt-bin qemu-kvm \
                                   kvmtool \
                                   ubuntu-vm-builder bridge-utils;

# Verifications
$(which kvm) --version;
$(which lkvm) --version;

