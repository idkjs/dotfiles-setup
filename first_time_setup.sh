#!/usr/bin/env

echo "Read through this file first. Hit ctrl+c now."
read -n 1

# Disable Gatekeeper (unidentified developer)
echo "Disable Gatekeeper (unidentified developer)"
sudo spctl --master-disable

echo -e "\\n\\nRunning on macOS"

# Install Homebrew
if test ! "$( command -v brew )"; then
    echo "Installing homebrew"
    ruby -e "$( curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install )"
fi

# Install brew dependencies from Brewfile
brew bundle

# Removed outdates versions from cellar
brew cleanup

# Agree to Xcode & Download Tools
echo 'Agree to Xcode & Download'
source scripts/xcode.sh


echo 'Pull in All Submodules'
git submodule update --recursive --remote --init


# Install & setup fzf
echo -e "\\n\\nRunning fzf install script..."
echo "=============================="
/usr/local/opt/fzf/install --all --no-bash --no-fish

# Install neovim python libraries
echo -e "\\n\\nRunning Neovim Python install"
echo "=============================="
pip3 install --user pynvim

echo 'Symlink setup'
source scripts/symlink.sh

echo 'MacOS Setup'
source scripts/osx.sh

echo 'Dock Setup'
source scripts/dock.sh

echo "Done. Reload your terminal!"