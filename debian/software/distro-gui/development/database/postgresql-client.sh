#!/bin/bash

# Install software
sudo apt-get install -y pgadmin3;

# Verifications
$(which pgadmin3) --version;

