#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y hexchat hexchat-indicator;

# Verifications
$(which hexchat) --version;

