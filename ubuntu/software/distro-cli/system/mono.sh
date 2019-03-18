#!/bin/bash

# Install software
sudo apt-get install -y mono-complete mono-runtime mono-4.0-gac;

# Verifications
$(which mono) --version;

