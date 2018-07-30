#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y svnkit svn-workbench;

# Verifications
$(which jsvn) --version;

