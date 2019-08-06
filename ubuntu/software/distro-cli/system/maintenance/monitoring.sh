#!/bin/bash

# Install software
sudo apt-get install -y htop \
                                   iotop \
                                   iftop \
                                   lsof;

# Verifications
$(which htop) --version;
$(which iotop) --version;
$(which iftop) -h;
$(which lsof) -v;

