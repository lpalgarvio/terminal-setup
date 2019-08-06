#!/bin/bash
# https://www.eclipse.org/downloads/eclipse-packages/

# Install software
wget http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/oomph/epp/mars/R/eclipse-inst-linux64.tar.gz -P /tmp/;
sudo mkdir -p /opt/eclipse/mars;
sudo chown -R $USER:$USER /opt/eclipse;
rm -Rf /opt/eclipse/mars/eclipse-installer;
tar -xzf /tmp/eclipse-inst-linux64.tar.gz -C /opt/eclipse/mars;
rm -f /tmp/eclipse-inst-linux64.tar.gz;

# Run installer
/opt/eclipse/mars/eclipse-installer/eclipse-inst;

# Add menus
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-php-mars.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse PHP Mars
Comment=Eclipse PHP Mars IDE
Icon=/opt/eclipse/mars/php-mars/eclipse/icon.xpm
Exec="/opt/eclipse/mars/php-mars/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-javascript-mars.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Javascript Mars
Comment=Eclipse Javascript Mars IDE
Icon=/opt/eclipse/mars/javascript-mars/eclipse/icon.xpm
Exec="/opt/eclipse/mars/javascript-mars/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-java-mars.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Java Mars
Comment=Eclipse Java Mars IDE
Icon=/opt/eclipse/mars/java-mars/eclipse/icon.xpm
Exec="/opt/eclipse/mars/java-mars/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-android-mars.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Android Mars
Comment=Eclipse Android Mars IDE
Icon=/opt/eclipse/mars/android-mars/eclipse/icon.xpm
Exec="/opt/eclipse/mars/android-mars/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-cpp-mars.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse C++ Mars
Comment=Eclipse C++ Mars IDE
Icon=/opt/eclipse/mars/cpp-mars/eclipse/icon.xpm
Exec="/opt/eclipse/mars/cpp-mars/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';

# Reset ownership
sudo chown -R $USER:$USER /opt/eclipse;

