#!/bin/bash

# Repositories and keys
sudo apt-get update;

# Install software
sudo apt-get install -y libreoffice libreoffice-writer libreoffice-calc libreoffice-impress libreoffice-draw libreoffice-base \
                                   libreoffice-math libreoffice-pdfimport libreoffice-templates openoffice.org-hyphenation \
                                   libreoffice-help-en-gb libreoffice-help-pt libreoffice-l10n-en-gb libreoffice-l10n-pt \
                                   libreoffice-sdbc-firebird libreoffice-sdbc-hsqldb libreoffice-sdbc-postgresql libreoffice-mysql-connector \
                                   libreoffice-kde libreoffice-style-breeze kde-thumbnailer-openoffice \
                                   libreoffice-avmedia-backend-gstreamer;

# Verifications
$(which libreoffice) --version;

