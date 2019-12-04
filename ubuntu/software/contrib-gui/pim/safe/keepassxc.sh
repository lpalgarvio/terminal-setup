#!/bin/bash
# https://keepassxc.org/download/#linux

# Repositories and keys
sudo add-apt-repository ppa:phoerious/keepassxc;
sudo apt-get update;

# Install dependencies

# Install software
sudo apt-get install -y keepassxc;

# Verifications
$(which keepassxc) --version;

