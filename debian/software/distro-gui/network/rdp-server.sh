#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (server)
sudo apt-get install -y xrdp;

# Verifications
$(which xrdp) --version;

