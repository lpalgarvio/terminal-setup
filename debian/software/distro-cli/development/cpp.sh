#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y cpp gcc g++;

# Verifications
$(which gcc) --version;
$(which g++) --version;

