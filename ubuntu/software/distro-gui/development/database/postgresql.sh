#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y pgadmin3;

# Verifications
$(which pgadmin3) --version;

