#!/bin/bash

# Install software
sudo apt-get install -y keepassxc;

# Verifications
$(which keepassxc) --version;

