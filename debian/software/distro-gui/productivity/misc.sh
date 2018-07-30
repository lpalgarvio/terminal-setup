#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y okular okular-extra-backends \
                                   dia dia-shapes;

# Verifications
$(which okular) --version;

