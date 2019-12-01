#!/bin/bash
# https://github.com/containers/buildah/blob/master/install.md

# Repositories and keys
sudo apt-add-repository --yes --update ppa:projectatomic/ppa;

# Install software
sudo apt-get install -y buildah;

