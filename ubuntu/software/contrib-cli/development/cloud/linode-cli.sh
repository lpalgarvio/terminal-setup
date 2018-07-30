#!/bin/bash
# https://www.linode.com/docs/platform/api/using-the-linode-cli/

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y python-pip;
sudo pip install --system --upgrade linode-cli;

# Verifications
$(which linode-cli) --version;

