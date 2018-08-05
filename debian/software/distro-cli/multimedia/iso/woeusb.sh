#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y woeusb;

# Verifications
$(which woeusb) --version;

