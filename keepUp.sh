#!/bin/bash
#Auto updater/upgrader/cleaner for macOS systems (with homebrew installed)

# First we search if tool for updating casks is installed 

if brew tap | grep buo/cask-upgrade; then
    # Do nothing, is installed
else 
    echo "Installing brew-cask-upgrade"
    brew tap buo/cask-upgrade
fi
# Tool for cask updates is installed, now the party starts
echo "Upgrading..."
# Check for updates
brew update
# Upgrade all packages from brew and taps
brew upgrade
# Upgrade all cask - also autoupdated apps and 'latest' apps -> https://github.com/buo/homebrew-cask-upgrade
brew cu -a -f -y
# Clean up all the mess
brew cleanup