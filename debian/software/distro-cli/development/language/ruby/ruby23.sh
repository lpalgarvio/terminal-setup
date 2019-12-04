#!/bin/bash

# Install software
sudo apt-get install -y ruby2.3 ruby2.3-dev;

# Configuration
#sudo update-alternatives --set ruby $(which ruby2.3);

# Verifications
$(which ruby2.3) --version;

