#!/bin/bash

# Install software (client)
sudo apt-get install -y vpnc vpnc-scripts;

# Verifications
$(which vpnc) --version;

