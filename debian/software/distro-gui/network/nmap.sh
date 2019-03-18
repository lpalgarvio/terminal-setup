#!/bin/bash

# Install software
sudo apt-get install -y zenmap wireshark wireshark-qt;

# Verifications
$(which zenmap) --version;
$(which wireshark) --version;

