#!/bin/bash

# Install software
sudo apt-get install -y mawk gawk \
                                   bison \
                                   bc \
                                   make cmake automake autoconf build-essential \
                                   patch patchutils diffutils colordiff \
                                   jacksum;

# Configuration
sudo update-alternatives --set awk $(which gawk);

# Verifications
$(which awk) --version;
$(which bison) --version;
$(which bc) --version;
$(which make) --version;
$(which cmake) --version;
$(which patch) --version;
$(which diff) --version;
$(which colordiff) --version;
$(which jacksum) --version;

