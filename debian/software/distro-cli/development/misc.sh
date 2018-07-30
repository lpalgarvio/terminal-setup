#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y mawk gawk \
                                   bison \
                                   bc \
                                   make automake autoconf build-essential \
                                   patch patchutils diffutils \
                                   jacksum;

# Configuration
sudo update-alternatives --set awk $(which gawk);

# Verifications
$(which awk) --version;
$(which bison) --version;
$(which bc) --version;
$(which make) --version;
$(which patch) --version;
$(which diff) --version;
$(which jacksum) --version;

