#!/bin/bash

# Install software
sudo apt-get install -y amarok amarok-utils;

# Verifications
$(which amarok) --version;

