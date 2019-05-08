#!/bin/bash

# Install software
sudo apt-get install -y scribus scribus-template;

# Verifications
$(which scribus) --version;

