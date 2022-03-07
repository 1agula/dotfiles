#!/bin/zsh

echo "\n<<< Starting Node Setup >>>\n"

# Node versions are managed with n, which is in the brewfile.
#See zshrc for N_PREFIX variable and addition to PATH.w

if exists node; then
  echo "Node $(node --version) & $NPM $(npm --version)  already installed"
else
  echo "Installing Node & NPM with n..."
  n latest
fi

# Install Global NPM Packages
npm install --global yarn
npm install --global typescript
npm install --global eslint
npm install --global create-react-app
npm install --global json-server
npm install --global http-server
npm install --global trash-cli
npm install --global deepl-cli
echo "Global NPM Packages Installed"
npm list --global --depth=0

