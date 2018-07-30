#!/bin/bash
# https://www.gitignore.io
# https://github.com/joeblau/gitignore.io

# Install software
git config --global alias.ignore '!gi() { curl -L -s https://www.gitignore.io/api/$@ ;}; gi';
echo "function gi() { curl -L -s https://www.gitignore.io/api/\$@ ;}" >> ~/.bashrc && source ~/.bashrc;

function gi() {
  curl -L -s https://www.gitignore.io/api/$@ ;
}

# Configuration
gi Windows,macOS,Linux >> ~/.gitignore_global;
gi Eclipse,JetBrains,KDevelop4,VisualStudioCode >> ~/.gitignore_global;
gi Kate,SublimeText >> ~/.gitignore_global;

