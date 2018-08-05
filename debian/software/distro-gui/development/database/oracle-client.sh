#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y sqldeveloper-package;

# Verifications
$(which make-sqldeveloper-package) -h;

