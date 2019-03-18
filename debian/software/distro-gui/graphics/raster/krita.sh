#!/bin/bash

# Install software
sudo apt-get install -y krita krita-l10n;

# Verifications
$(which krita) --version;

