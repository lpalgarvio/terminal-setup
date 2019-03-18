#!/bin/bash

# Install software
sudo apt-get install -y librecad;

# Verifications
$(which librecad) --version;

