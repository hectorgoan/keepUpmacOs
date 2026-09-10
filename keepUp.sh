#!/bin/bash
#Auto updater/upgrader/cleaner for macOS systems (with homebrew || cleanmymac cli installed)

# First we search if tool for updating casks is installed

echo "Upgrading..."

if command -v brew >/dev/null 2>&1; then
    # Checkout brew
    brew doctor
    # Check for updates
    brew update
    # Upgrade all packages from brew and taps
    brew upgrade && brew upgrade --cask
    # Clean up all the mess
    brew cleanup
else
    echo "Homebrew is not installed; skipping Homebrew updates."
fi

if command -v cleanmymac >/dev/null 2>&1; then
    # CleanMyMac CLI without confirmation
    cleanmymac clean --force
else
    echo "CleanMyMac CLI is not installed; skipping cleanup."
fi

echo "Done"
