#!/bin/bash
#Auto updater/upgrader/cleaner for macOS systems (with homebrew installed)

# First we search if tool for updating casks is installed 

echo "Upgrading..."
# Checkout brew
brew doctor
# Check for updates
brew update
# Upgrade all packages from brew and taps
brew upgrade --cask
# Clean up all the mess
brew cleanup

echo "Done"
