#!/bin/bash
# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions

# Repositories and keys
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -;

# Install software
sudo apt-get install -y nodejs;

# Verifications
$(which nodejs) --version;
$(which npm) --version;

