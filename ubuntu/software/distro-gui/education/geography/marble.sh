#!/bin/bash

# Install software
sudo apt-get install -y marble;

# Verifications
$(which marble) --version;

