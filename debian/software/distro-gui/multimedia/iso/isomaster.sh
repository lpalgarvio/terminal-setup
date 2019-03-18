#!/bin/bash

# Install software
sudo apt-get install -y isomaster;

# Verifications
$(which isomaster) --help;

