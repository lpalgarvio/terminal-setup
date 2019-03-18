#!/bin/bash

# Install software
sudo apt-get install -y virt-manager;

# Verifications
$(which virt-manager) --version;

