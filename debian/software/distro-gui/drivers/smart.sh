#!/bin/bash

# Install software
sudo apt-get install -y gsmartcontrol;

# Verifications
$(which gsmartcontrol) --version;

