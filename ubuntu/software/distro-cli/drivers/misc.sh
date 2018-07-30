#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y dmidecode \
                                   lshw \
                                   hwinfo;

# Verifications
$(which dmidecode) --version;
$(which lshw) -version;
$(which hwinfo) --version;

