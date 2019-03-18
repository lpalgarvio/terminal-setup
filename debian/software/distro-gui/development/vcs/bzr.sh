#!/bin/bash

# Install software
sudo apt-get install -y bzr-explorer qbzr;

# Verifications
$(which bzr explorer) version;
$(which bzr qversion) version;

