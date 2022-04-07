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
npm list --depth 1 --global yarn > /dev/null 2>&1 || npm install --global yarn
npm list --depth 1 --global typescript > /dev/null 2>&1 || npm install --global typescript
npm list --depth 1 --global eslint > /dev/null 2>&1 || npm install --global eslint
npm list --depth 1 --global create-react-app > /dev/null 2>&1 || npm install --global create-react-app
npm list --depth 1 --global create-next-app > /dev/null 2>&1 || npm install --global create-next-app
npm list --depth 1 --global json-server > /dev/null 2>&1 || npm install --global json-server
npm list --depth 1 --global http-server > /dev/null 2>&1 || npm install --global http-server
npm list --depth 1 --global trash-cli > /dev/null 2>&1 || npm install --global trash-cli
npm list --depth 1 --global deepl-cli > /dev/null 2>&1 || npm install --global deepl-cli
echo "Global NPM Packages Installed"
npm list --global --depth=0

