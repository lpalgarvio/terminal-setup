#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y handbrake;

# Verifications
$(which handbrake) -h;

