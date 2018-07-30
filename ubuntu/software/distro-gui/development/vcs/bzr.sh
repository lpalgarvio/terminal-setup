#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y bzr-explorer qbzr;

# Verifications
$(which bzr explorer) version;
$(which bzr qversion) version;

