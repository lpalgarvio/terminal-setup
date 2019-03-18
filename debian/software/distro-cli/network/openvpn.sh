#!/bin/bash

# Install software (client and server)
sudo apt-get install -y openvpn;

# Verifications
$(which openvpn) --version;

