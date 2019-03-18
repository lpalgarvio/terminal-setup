#!/bin/bash

# Install software
sudo apt-get install -y sqlitebrowser;

# Verifications
$(which sqlitebrowser) --version;

