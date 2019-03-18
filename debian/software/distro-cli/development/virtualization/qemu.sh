#!/bin/bash

# Install software
sudo apt-get install -y qemu \
                                   qemu-utils \
                                   qemu-user \
                                   qemu-system \
                                   qemu-efi \
                                   qemu-guest-agent;

# Verifications
$(which qemu-img) --version;

