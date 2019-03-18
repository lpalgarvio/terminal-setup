#!/bin/bash

# Install software
sudo apt-get install -y filezilla;

# Verifications
$(which filezilla) --version;

