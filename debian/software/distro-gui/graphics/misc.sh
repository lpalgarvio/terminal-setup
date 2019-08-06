#!/bin/bash

# Install software
sudo apt-get install -y icc-profiles-free \
                                    kdegraphics-thumbnailers svgpart \
                                    digikam kipi-plugins \
                                    skanlite;

# Remove software
sudo apt-get remove --purge -y kdegraphics-mobipocket kimagemapeditor;

# Verifications
$(which digikam) --version;
$(which skanlite) --version;

