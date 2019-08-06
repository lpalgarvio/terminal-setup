#!/bin/bash

# Install software
sudo apt-get install -y cpp gcc g++;

# Verifications
$(which gcc) --version;
$(which g++) --version;

