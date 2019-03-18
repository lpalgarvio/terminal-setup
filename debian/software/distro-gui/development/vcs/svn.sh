#!/bin/bash

# Install software
sudo apt-get install -y svnkit svn-workbench;

# Verifications
$(which jsvn) --version;

