#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y qemu \
                                   qemu-utils \
                                   qemu-user \
                                   qemu-system \
                                   qemu-efi \
                                   qemu-guest-agent;

# Verifications
$(which qemu-img) --version;

