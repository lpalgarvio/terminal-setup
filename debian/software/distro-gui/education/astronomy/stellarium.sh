#!/bin/bash

# Install software
sudo apt-get install -y stellarium;

# Verifications
$(which stellarium) --version;

