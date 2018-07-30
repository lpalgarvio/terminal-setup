#!/bin/bash
# http://projectocolibri.com/download

# Install dependencies
sudo apt-get install -y mozplugger;
sudo dpkg -l mozplugger;
wget http://deltafil.com/download/xulrunner-1.9.2.tar.gz -P /tmp/;
sudo mkdir -p /opt/xulrunner;
sudo tar -xzf /tmp/xulrunner-1.9.2.tar.gz -C /opt/xulrunner;
rm -f /tmp/xulrunner-1.9.2.tar.gz;

# Install software
wget http://deltafil.com/download/colibri.rcp.gtk.x86_64.tar.gz -P /tmp/;
sudo mkdir -p /opt/colibri;
sudo tar -xzf /tmp/colibri.rcp.gtk.x86_64.tar.gz -C /opt/colibri;
rm -f /tmp/colibri.rcp.gtk.x86_64.tar.gz;

# Configuration
sudo perl -0p -i -e "s>/home/colibri/colibri.rcp.gtk.x86_64/>/opt/colibri>" /opt/colibri/RCPcolibri.sh;

# Add menus
sudo bash -c 'cat <<EOF > /usr/share/applications/colibri.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Colibri
Comment=The Project Colibri RCP10 billing application
Icon=/opt/colibri/icon.ico
Exec=/opt/colibri/RCPcolibri.sh %F
Categories=Office;
Terminal=false
EOF';

# Reset ownership
sudo chown -R $USER:$USER /opt/xulrunner;
sudo chown -R $USER:$USER /opt/colibri;

