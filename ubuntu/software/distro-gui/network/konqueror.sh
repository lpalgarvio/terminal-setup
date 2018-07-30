#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y konqueror konqueror-nsplugins;

# Verifications
$(which konqueror) --version;

