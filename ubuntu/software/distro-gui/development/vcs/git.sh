#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y gitk git-cola qgit;

# Verifications
$(which git-cola) --version;

