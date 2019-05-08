#!/bin/bash

# Install software
sudo apt-get install -y transmission-qt;

# Verifications
$(which transmission-qt) --version;

