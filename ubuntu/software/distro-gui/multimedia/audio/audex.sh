#!/bin/bash

# Install software
sudo apt-get install -y audex;

# Verifications
$(which audex) --version;

