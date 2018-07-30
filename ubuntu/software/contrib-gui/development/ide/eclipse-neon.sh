#!/bin/bash
# https://www.eclipse.org/downloads/eclipse-packages/

# Install software
wget http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/oomph/epp/neon/R/eclipse-inst-linux64.tar.gz -P /tmp/;
sudo mkdir -p /opt/eclipse/neon;
sudo chown -R $USER:$USER /opt/eclipse;
rm -Rf /opt/eclipse/neon/eclipse-installer;
tar -xzf /tmp/eclipse-inst-linux64.tar.gz -C /opt/eclipse/neon;
rm -f /tmp/eclipse-inst-linux64.tar.gz;

# Run installer
/opt/eclipse/neon/eclipse-installer/eclipse-inst;

# Add menus
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-php-neon.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse PHP Neon
Comment=Eclipse PHP Neon IDE
Icon=/opt/eclipse/php-neon/eclipse/icon.xpm
Exec="/opt/eclipse/php-neon/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-javascript-neon.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Javascript Neon
Comment=Eclipse Javascript Neon IDE
Icon=/opt/eclipse/javascript-neon/eclipse/icon.xpm
Exec="/opt/eclipse/javascript-neon/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-android-neon.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Android Neon
Comment=Eclipse Android Neon IDE
Icon=/opt/eclipse/android-neon/eclipse/icon.xpm
Exec="/opt/eclipse/android-neon/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';

# Reset ownership
sudo chown -R $USER:$USER /opt/eclipse;

