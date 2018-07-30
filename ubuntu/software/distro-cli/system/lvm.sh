#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y lvm2;

# Verifications
$(which lvm) --version;

