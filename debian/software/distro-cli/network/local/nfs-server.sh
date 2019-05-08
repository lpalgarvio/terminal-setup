#!/bin/bash

# Install software (server)
sudo apt-get install -y nfs-kernel-server;

# Verifications
$(which nfs) --version;

