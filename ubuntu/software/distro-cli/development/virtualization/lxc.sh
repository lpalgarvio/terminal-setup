#!/bin/bash

# Install software
sudo apt-get install -y lxc \
                                   lxctl lxc-utils lxc-templates \
                                   lxd lxd-client lxd-tools \
                                   lxcfs;

# Verifications
$(which lxc) --version;
$(which lxd) --version;

