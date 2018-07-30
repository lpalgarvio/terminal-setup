#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y gparted \
                                   partitionmanager;

# Verifications
$(which gparted) --version;
$(which partitionmanager) --version;

