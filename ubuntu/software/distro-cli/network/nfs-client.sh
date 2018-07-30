#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (client)
sudo apt-get install -y nfs-common;

# Verifications
$(which nfs) --version;

