#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y pidgin pidgin-data \
                                    pidgin-encryption \
                                    pidgin-sipe;

# Verifications
$(which pidgin) --version;

