#!/bin/bash

# Install software (server)
sudo apt-get install -y xrdp;

# Verifications
$(which xrdp) --version;

