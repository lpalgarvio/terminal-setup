#!/bin/bash

# Install software
sudo apt-get install -y iptables;

# Verifications
$(which iptables) --version;

