#!/bin/bash

# Install software
sudo apt-get install -y lxc \
                                   lxctl lxc-utils \
                                   lxcfs;

# Verifications
$(which lxc) --version;

