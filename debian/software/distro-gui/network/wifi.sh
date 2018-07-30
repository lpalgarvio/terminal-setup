#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y aircrack-ng;

# Verifications
$(which aircrack-ng) --help;

