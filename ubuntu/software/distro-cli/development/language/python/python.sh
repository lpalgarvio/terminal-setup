#!/bin/bash

# Install software
sudo apt-get install -y python python-minimal python-pip;

# Verifications
$(which python) --version;
$(which pip) --version;
$(which pip) list;

