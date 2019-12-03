#!/bin/bash

# Install software
sudo apt-get install -y htop \
                                   powertop \
                                   iotop \
                                   iftop nload \
                                   lsof \
                                   dstat;

# Verifications
$(which htop) --version;
$(which powertop) --version;
$(which iotop) --version;
$(which nload) -h;
$(which iftop) -h;
$(which lsof) -v;
$(which dstat) -V;

