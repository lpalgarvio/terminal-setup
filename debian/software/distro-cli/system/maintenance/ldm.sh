#!/bin/bash

# Install software
sudo apt-get install -y ldmtool;

# Verifications
$(which ldmtool) --help;

