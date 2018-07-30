#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y ubuntu-virt virt-manager;

# Verifications
$(which virt-manager) --version;

