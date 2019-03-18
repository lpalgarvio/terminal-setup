#!/bin/bash

# Install software
sudo apt-get install -y nmap tshark;

# Verifications
$(which nmap) --version;
$(which tshark) --version;

