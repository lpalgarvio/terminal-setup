#!/bin/bash

# Install software
sudo apt-get install -y grub2-common \
                                   grub-efi-amd64 \
                                   grub-efi-amd64-signed \
                                   efibootmgr \
                                   efitools;

# Verifications
$(which efibootmgr) --version;

