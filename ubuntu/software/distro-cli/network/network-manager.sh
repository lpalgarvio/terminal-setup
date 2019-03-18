#!/bin/bash

# Install software
sudo apt-get install -y network-manager \
                                   network-manager-ssh \
                                   network-manager-openvpn \
                                   network-manager-vpnc \
                                   network-manager-pptp;

# Verifications
$(which networkctl --version) --version;

