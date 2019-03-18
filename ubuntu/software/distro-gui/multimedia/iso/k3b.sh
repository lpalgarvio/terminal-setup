#!/bin/bash

# Install software
sudo apt-get install -y k3b k3b-i18n;

# Verifications
$(which k3b) --version;

