#!/bin/bash

# Install software
sudo apt-get install -y gramps;

# Verifications
$(which gramps) --version;

