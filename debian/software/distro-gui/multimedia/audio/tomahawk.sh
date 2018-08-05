#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y tomahawk;

# Verifications
$(which tomahawk) --help;

