#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software (server)
sudo apt-get install -y nfs-kernel-server;

# Verifications
$(which nfs) --version;

