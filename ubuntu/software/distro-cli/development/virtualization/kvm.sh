#!/bin/bash

# Install software
sudo apt-get install -y qemu-kvm \
                                   kvmtool \
                                   bridge-utils;

# Verifications
$(which kvm) --version;
$(which lkvm) --version;

