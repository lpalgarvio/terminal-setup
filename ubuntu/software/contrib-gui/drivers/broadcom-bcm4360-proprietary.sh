#!/bin/bash
# https://help.ubuntu.com/community/WifiDocs/Driver/bcm43xx
# https://askubuntu.com/questions/689057/is-it-possible-to-use-a-tp-link-archer-t8e-wireless-card-on-ubuntu-14-04
#

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y bcmwl-kernel-source;

