#!/bin/bash
# sh "HomeBrew Applications.sh"
# macOS Bash Script
echo "Installing HomeBrew Applications..."
START_TIME=$(date +%s)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 
wait
brew analytics off
wait
brew install --cask vscodium libreoffice librewolf tailscale dupeguru steam syncthing todoist qbittorrent gimp parsec modrinth discord proton-mail protonvpn proton-drive proton-pass grandperspective
wait
END_TIME=$(date +%s)
ELAPSED_TIME=$((END_TIME - START_TIME))
clear
echo "Installation complete (${ELAPSED_TIME}s)"
