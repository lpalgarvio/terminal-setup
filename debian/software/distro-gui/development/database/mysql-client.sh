#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y mysql-workbench;

# Verifications
$(which mysql-workbench) --version;

