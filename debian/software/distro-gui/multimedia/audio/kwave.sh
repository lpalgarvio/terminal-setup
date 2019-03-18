#!/bin/bash

# Install software
sudo apt-get install -y kwave;

# Verifications
$(which kwave) --version;

