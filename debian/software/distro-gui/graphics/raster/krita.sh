#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y krita krita-l10n;

# Verifications
$(which krita) --version;

