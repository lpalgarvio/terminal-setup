#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y autopsy \
                                   bleachbit \
                                   secure-delete;

# Verifications
$(which autopsy) --version;
$(which bleachbit) --version;
$(which secure-delete) --version;

