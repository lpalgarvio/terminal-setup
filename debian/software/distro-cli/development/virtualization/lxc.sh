#!/bin/bash

# Install software
sudo apt-get install -y lxc \
                                   lxctl lxc-utils lxc-templates \
                                   lxcfs;

# Verifications
$(which lxc) --version;
