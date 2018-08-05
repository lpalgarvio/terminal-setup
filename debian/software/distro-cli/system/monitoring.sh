#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y htop \
                                   iotop \
                                   iftop \
                                   lsof \
                                   fdupes \
                                   tree \
                                   di \
                                   locate;

# Verifications
$(which htop) --version;
$(which iotop) --version;
$(which iftop) -h;
$(which lsof) -v;
$(which fdupes) --version;
$(which tree) --version;
$(which di) --version;
$(which locate) --version;

