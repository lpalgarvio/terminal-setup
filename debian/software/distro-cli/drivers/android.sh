#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y android-tools-fastboot \
                                   heimdall-flash;

# Verifications
$(which heimdall) --version;

