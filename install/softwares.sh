#!/bin/sh

source colors.sh

#  Brew Cask ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
msg_install "Installing apps with brew cask"
brew cask

cask=(
  "iterm2"
  "visual-studio-code"
  "spotify"
  "coconutbattery"
  "zoom",
  "watchman",
  "node"

)

for app in "${cask[@]}"; do
  msg_install "Installing $app"
  brew install --cask $app
  msg_ok "$app"
done
