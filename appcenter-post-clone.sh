#!/usr/bin/env bash
set -e
brew uninstall node@6
NODE_VERSION="8.8.0"
curl "https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}.pkg" > "$HOME/Downloads/node-installer.pkg"
sudo installer -store -pkg "$HOME/Downloads/node-installer.pkg" -target "/"
npm install exp exptool -g
exp path
EXPO_DEBUG=true
