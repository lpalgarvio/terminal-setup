#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y freeciv-client-qt \
                                   freeciv-client-gtk \
                                   freeciv-client-extras \
                                   freeciv-server \
                                   freeciv-sound-standard;

