#!/bin/bash
# https://www.eclipse.org/downloads/eclipse-packages/

# Install software
wget http://ftp-stud.fht-esslingen.de/pub/Mirrors/eclipse/oomph/epp/oxygen/R/eclipse-inst-linux64.tar.gz -P /tmp/;
sudo mkdir -p /opt/eclipse/oxygen;
sudo chown -R $USER:$USER /opt/eclipse;
rm -Rf /opt/eclipse/oxygen/eclipse-installer;
tar -xzf /tmp/eclipse-inst-linux64.tar.gz -C /opt/eclipse/oxygen;
rm -f /tmp/eclipse-inst-linux64.tar.gz;

# Run installer
/opt/eclipse/oxygen/eclipse-installer/eclipse-inst;

# Add menus
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-php-oxygen.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse PHP Oxygen
Comment=Eclipse PHP Oxygen IDE
Icon=/opt/eclipse/oxygen/php-oxygen/eclipse/icon.xpm
Exec="/opt/eclipse/oxygen/php-oxygen/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-javascript-oxygen.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Javascript Oxygen
Comment=Eclipse Javascript Oxygen IDE
Icon=/opt/eclipse/oxygen/javascript-oxygen/eclipse/icon.xpm
Exec="/opt/eclipse/oxygen/javascript-oxygen/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-java-oxygen.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Java Oxygen
Comment=Eclipse Java Oxygen IDE
Icon=/opt/eclipse/oxygen/java-oxygen/eclipse/icon.xpm
Exec="/opt/eclipse/oxygen/java-oxygen/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-android-oxygen.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse Android Oxygen
Comment=Eclipse Android Oxygen IDE
Icon=/opt/eclipse/oxygen/android-oxygen/eclipse/icon.xpm
Exec="/opt/eclipse/oxygen/android-oxygen/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';
sudo bash -c 'cat <<EOF > /usr/share/applications/eclipse-cpp-oxygen.desktop
[Desktop Entry]
Version=1.0
Type=Application
Name=Eclipse C++ Oxygen
Comment=Eclipse C++ Oxygen IDE
Icon=/opt/eclipse/oxygen/cpp-oxygen/eclipse/icon.xpm
Exec="/opt/eclipse/oxygen/cpp-oxygen/eclipse/eclipse" %f
Categories=Development;IDE;
Terminal=false
EOF';

# Reset ownership
sudo chown -R $USER:$USER /opt/eclipse;

