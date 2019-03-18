#!/bin/bash

# Install software (client)
sudo apt-get install -y kvpnc;

# Verifications
$(which kvpnc) --version;

