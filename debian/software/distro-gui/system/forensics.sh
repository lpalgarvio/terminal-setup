#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y autopsy \
                                   bleachbit;

# Verifications
$(which autopsy) --version;
$(which bleachbit) --version;

