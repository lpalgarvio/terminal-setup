#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y hgview tortoisehg;

# Verifications
$(which hgview) version;
$(which tortoisehg) version;

