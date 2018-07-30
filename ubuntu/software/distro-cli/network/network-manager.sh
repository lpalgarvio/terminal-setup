#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y network-manager \
                                   network-manager-pptp \
                                   network-manager-openvpn \
                                   network-manager-vpnc;

# Verifications
$(which networkctl --version) --version;

