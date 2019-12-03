#!/bin/bash

# Install software
sudo apt-get install -y virt-manager virt-viewer;

# Verifications
$(which virt-manager) --version;
$(which virt-viewer) --version;

