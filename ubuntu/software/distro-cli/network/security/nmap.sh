#!/bin/bash

# Install software
sudo apt-get install -y nmap tshark;

# Configuration
sudo groupadd wireshark;
sudo usermod -a -G wireshark $USER;

# Verifications
$(which nmap) --version;
$(which tshark) --version;

