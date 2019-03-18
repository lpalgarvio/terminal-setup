#!/bin/bash

# Install software
sudo apt-get install -y mysql-workbench;

# Verifications
$(which mysql-workbench) --version;

