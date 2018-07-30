#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y ethtool macchanger wakeonlan;

# Verifications
$(which ethtool) --version;
$(which macchanger) --version;
$(which wakeonlan) --version;

