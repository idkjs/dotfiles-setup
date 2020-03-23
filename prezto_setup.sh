#!/usr/bin/env

echo 'Pull in All Submodules'
git submodule update --recursive --remote --init


# Install & setup fzf
echo -e "\\n\\nRunning fzf install script..."
echo "=============================="
/usr/local/opt/fzf/install --all --no-bash --no-fish