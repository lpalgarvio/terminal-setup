#!/bin/bash

# Install software
sudo apt-get install -y virtualbricks vde2 vde2-cryptcab;

# Verifications
$(which virtualbricks) --version;

