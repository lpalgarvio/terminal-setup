#!/bin/bash

# Install software
sudo apt-get install -y android-tools-fastboot \
                                   heimdall-flash;

# Verifications
$(which heimdall) version;

