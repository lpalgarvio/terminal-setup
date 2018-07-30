#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (client and server)
sudo apt-get install -y openvpn \
                                   openvpn-blacklist;

# Verifications
$(which openvpn) --version;

