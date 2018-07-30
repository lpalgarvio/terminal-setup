#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y mdadm;

# Verifications
$(which mdadm) --version;

