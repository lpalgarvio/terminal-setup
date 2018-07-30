#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y lxc2 lxc \
                                   lxc-utils lxctl lxc-templates \
                                   lxd lxd-client \
                                   lxd-tools lxcfs;

# Verifications
$(which lxc) --version;
$(which lxd) --version;

