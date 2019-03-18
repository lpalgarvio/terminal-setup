#!/bin/bash

# Install software
sudo apt-get install -y sqldeveloper-package;

# Verifications
$(which make-sqldeveloper-package) -h;

