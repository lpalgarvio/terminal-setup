#!/bin/bash

# Install software
sudo apt-get install -y bzr bzr-doc bzrtools;

# Verifications
$(which bzr) version;

