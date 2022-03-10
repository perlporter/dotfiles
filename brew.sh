#!/bin/sh

if test ! "$(command -v brew)"; then
  info "Homebrew not installed. Installing."
  # Run as a login shell (non-interactive) so that the script doesn't pause for user input
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install brew dependencies from Brewfile
brew bundle
