#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y iptables;

# Verifications
$(which iptables) --version;

