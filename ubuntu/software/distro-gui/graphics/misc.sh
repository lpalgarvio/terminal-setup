#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y icc-profiles-free \
                                    kdegraphics-thumbnailers kipi-plugins svgpart \
                                    digikam \
                                    skanlite ksaneplugin xsane;

# Remove software
sudo apt-get remove --purge -y kdegraphics-mobipocket kimagemapeditor;

# Verifications
$(which digikam) --version;
$(which skanlite) --version;
$(which xsane) --version;

