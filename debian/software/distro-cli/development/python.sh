#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y python python-minimal python-pip;
sudo apt-get install -y python3 python3-minimal python3-pip;

# Configuration
sudo update-alternatives --set python $(which python2.7);

# Verifications
$(which python) --version;
$(which python3) --version;
$(which pip) list;

