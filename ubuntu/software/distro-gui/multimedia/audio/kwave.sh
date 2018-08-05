#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y kwave;

# Verifications
$(which kwave) --version;

