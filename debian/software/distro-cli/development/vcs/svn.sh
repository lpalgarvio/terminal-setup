#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y subversion;

# Verifications
$(which svn) --version;

