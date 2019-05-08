#!/bin/bash

# Install software
sudo apt-get install -y konqueror konqueror-nsplugins;

# Verifications
$(which konqueror) --version;

