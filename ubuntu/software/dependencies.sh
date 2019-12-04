#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y sudo \
                        apt-transport-https software-properties-common \
                        ca-certificates;

# Verifications
$(which sudo) --version;

