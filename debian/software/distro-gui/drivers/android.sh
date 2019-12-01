#!/bin/bash

# Install software
sudo apt-get install -y heimdall-flash-frontend;

# Verifications
$(which heimdall) version;

