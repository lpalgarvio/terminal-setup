#!/bin/bash
# https://podman.io/getting-started/installation

# Repositories and keys
sudo apt-add-repository --yes --update ppa:projectatomic/ppa;

# Install dependencies
sudo apt-get install -y uidmap;

# Install software
sudo apt-get install -y podman;

