#!/bin/bash

# Install software
sudo apt-get install -y woeusb;

# Verifications
$(which woeusb) --version;

