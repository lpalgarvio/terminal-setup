#!/bin/bash
# https://desktop.telegram.org/

# Releases
app_release='2.5.1';

# Install software (client)
wget https://updates.tdesktop.com/tlinux/tsetup.${app_release}.tar.xz -P /tmp/;
sudo rm -Rf /opt/Telegram;
sudo tar -xf /tmp/tsetup.${app_release}.tar.xz -C /opt;
rm -f /tmp/tsetup.${app_release}.tar.xz;

# Reset ownership
sudo chown -R $USER:$USER /opt/Telegram;

