#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y k3b k3b-i18n \
                                   libk3b6-extracodecs;

# Verifications
$(which k3b) --version;

