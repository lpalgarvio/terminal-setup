#!/bin/bash

# Install software
sudo apt-get install -y hexchat hexchat-indicator;

# Verifications
$(which hexchat) --version;

