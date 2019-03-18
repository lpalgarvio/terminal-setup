#!/bin/bash

# Install software
sudo apt-get install -y dmidecode \
                                   lshw \
                                   hwinfo;

# Verifications
$(which dmidecode) --version;
$(which lshw) -version;
$(which hwinfo) --version;

