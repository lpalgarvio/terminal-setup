#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y macchanger-gtk \
                                   gwakeonlan;

# Verifications
#$(which macchanger-gtk) --version;
#$(which gwakeonlan) --version;

