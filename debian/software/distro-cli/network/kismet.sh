#!/bin/bash

# Install software
sudo apt-get install -y kismet kismet-plugins;

# Verifications
$(which kismet) --version;

