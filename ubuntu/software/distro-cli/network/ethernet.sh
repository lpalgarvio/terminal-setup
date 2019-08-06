#!/bin/bash

# Install software
sudo apt-get install -y ethtool bridge-utils;

# Verifications
$(which ethtool) --version;
$(which bridge) --Version;

