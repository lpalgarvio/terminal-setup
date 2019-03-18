#!/bin/bash

# Install software
sudo apt-get install -y ksshaskpass \
                                   kgpg \
                                   kleopatra \
                                   knotes \
                                   kdeconnect;

# Remove software
sudo apt-get remove --purge -y kdepim \
                                                  akregator \
                                                  kde-config-telepathy-accounts \
                                                  kde-telepathy kde-telepathy-minimal kde-telepathy-integration-module \
                                                  kde-telepathy-approver kde-telepathy-auth-handler \
                                                  kde-telepathy-call-ui kde-telepathy-contact-list \
                                                  kde-telepathy-data kde-telepathy-desktop-applets \
                                                  kde-telepathy-filetransfer-handler \
                                                  kde-telepathy-kaccounts kde-telepathy-kpeople \
                                                  kde-telepathy-send-file kde-telepathy-text-ui \
                                                  telepathy-accounts-signon telepathy-mission-control-5 \
                                                  telepathy-idle telepathy-indicator telepathy-logger \
                                                  telepathy-gabble telepathy-haze telepathy-salut \
                                                  kopete \
                                                  konversation konversation-data;

# Verifications
$(which ksshaskpass) --version;
$(which kgpg) --version;
$(which kleopatra) --version;
$(which knotes) --version;
$(which kdeconnect-cli) --version;

