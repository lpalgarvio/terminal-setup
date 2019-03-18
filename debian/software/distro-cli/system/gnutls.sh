#!/bin/bash

# Install software
sudo apt-get install -y gnutls-bin;

# Verifications
$(which gnutls-cli) --version;

