#!/bin/bash

# Install software
sudo apt-get install -y python2.7 python2.7-minimal python-pip;

# Configuration
#sudo update-alternatives --set python $(which python2.7);

# Verifications
$(which python2) --version;
$(which pip2) --version;
$(which pip2) list;

