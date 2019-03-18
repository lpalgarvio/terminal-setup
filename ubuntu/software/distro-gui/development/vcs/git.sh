#!/bin/bash

# Install software
sudo apt-get install -y gitk git-cola qgit gitg;

# Verifications
$(which git-cola) --version;

