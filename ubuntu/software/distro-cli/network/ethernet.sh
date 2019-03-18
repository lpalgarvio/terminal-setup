#!/bin/bash

# Install software
sudo apt-get install -y ethtool macchanger wakeonlan;

# Verifications
$(which ethtool) --version;
$(which macchanger) --version;
$(which wakeonlan) -v;

