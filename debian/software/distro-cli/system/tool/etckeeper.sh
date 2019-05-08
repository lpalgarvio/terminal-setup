#!/bin/bash

# Install software
sudo apt-get install -y sudo etckeeper;

# Verifications
$(which etckeeper) --version;

