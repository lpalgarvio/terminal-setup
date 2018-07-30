#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y perl perl-base perl-modules;

# Verifications
$(which perl) --version;

