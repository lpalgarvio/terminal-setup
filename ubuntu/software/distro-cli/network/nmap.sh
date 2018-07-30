#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y nmap tshark;

# Verifications
$(which nmap) --version;
$(which tshark) --version;

