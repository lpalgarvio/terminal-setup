#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y virtualbricks vde2 vde2-cryptcab;

# Verifications
$(which virtualbricks) --version;

