#!/bin/bash
# https://github.com/yakyak/yakyak

# Releases
app_release='1.5.1';

# Install software (client)
wget https://github.com/yakyak/yakyak/releases/download/v${app_release}/yakyak-${app_release}-linux-x64.tar.gz -P /tmp/;
sudo mkdir -p /opt/yakyak-tmp;
sudo tar -xzf /tmp/yakyak-${app_release}-linux-x64.tar.gz -C /opt/yakyak-tmp;
sudo rm -Rf /opt/yakyak;
sudo mv /opt/yakyak-tmp/yakyak-linux-x64 /opt/yakyak;
sudo rmdir /opt/yakyak-tmp;
rm -f /tmp/yakyak-${app_release}-linux-x64.tar.gz;

# Add menus
sudo bash -c 'cat <<EOF > /usr/share/applications/yakyak.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=YakYak
Comment=Messaging client for Google Hangouts
Icon=/opt/yakyak/resources/app/icons/yakyak-logo.svg
Exec="/opt/yakyak/yakyak" %f
Categories=Internet;
Terminal=false
EOF';

# Reset ownership
sudo chown -R $USER:$USER /opt/yakyak;

