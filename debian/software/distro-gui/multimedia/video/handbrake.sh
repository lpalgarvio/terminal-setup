#!/bin/bash

# Install software
sudo apt-get install -y handbrake;

# Verifications
$(which handbrake) -h;

