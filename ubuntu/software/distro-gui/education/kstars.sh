#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kstars;

# Verifications
$(which kstars) --version;

