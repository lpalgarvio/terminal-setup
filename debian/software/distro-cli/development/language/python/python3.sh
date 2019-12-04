#!/bin/bash

# Install software
sudo apt-get install -y python3 python3-minimal python3-pip;

# Configuration
#sudo update-alternatives --set python $(which python3);

# Verifications
$(which python3) --version;
$(which pip3) --version;
$(which pip3) list;

