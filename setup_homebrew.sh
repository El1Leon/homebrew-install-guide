#!/bin/bash

set -e

echo "Installing Xcode Command Line Tools..."
xcode-select --install 2>/dev/null || echo "Already installed."

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Adding Homebrew to shell environment..."
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "Running brew doctor..."
brew doctor

echo "Updating Homebrew..."
brew update

echo "✅ Homebrew installation complete!"
