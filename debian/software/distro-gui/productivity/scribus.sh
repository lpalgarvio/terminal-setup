#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y scribus scribus-template;

# Verifications
$(which scribus) --version;

