#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y chromium-browser \
                                    chromium-browser-l10n \
                                    chromium-codecs-ffmpeg-extra;

# Verifications
$(which chromium) --version;

