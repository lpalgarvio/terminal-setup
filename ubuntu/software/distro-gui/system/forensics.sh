#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y autopsy \
                                   bleachbit \
                                   sweeper \
                                   secure-delete;

# Verifications
$(which autopsy) -h;
$(which bleachbit) --version;
$(which sweeper) --version;
$(which secure-delete) --version;

