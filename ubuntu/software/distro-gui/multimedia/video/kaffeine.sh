#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kaffeine;

# Verifications
$(which kaffeine) --version;

