#!/bin/bash

# Install software
sudo apt-get install -y chromium-browser \
                                    chromium-browser-l10n \
                                    chromium-codecs-ffmpeg-extra;

# Verifications
$(which chromium-browser) --version;

