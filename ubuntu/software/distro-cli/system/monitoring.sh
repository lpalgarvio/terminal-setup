#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y htop \
                                   iotop \
                                   iftop \
                                   lsof \
                                   fdupes \
                                   tree;

# Verifications
$(which htop) --version;
$(which iotop) --version;
$(which iftop) -h;
$(which lsof) --version;
$(which fdupes) --version;
$(which tree) --version;

