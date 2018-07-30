#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y bzr bzr-doc bzrtools;

# Verifications
$(which bzr) version;

