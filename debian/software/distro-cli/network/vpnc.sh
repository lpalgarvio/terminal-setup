#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (client)
sudo apt-get install -y vpnc vpnc-scripts;

# Verifications
$(which vpnc) --version;

