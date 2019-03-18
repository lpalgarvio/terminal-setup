#!/bin/bash

# Install software
sudo apt-get install -y subversion;

# Verifications
$(which svn) --version;

