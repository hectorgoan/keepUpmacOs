#!/bin/bash
#Auto updater/upgrader/cleaner for macOS systems (with homebrew installed)

brew doctor && brew update && brew upgrade && brew cleanup
