#!/usr/bin/zsh

# exit when an error occurs
set -e

# make sure zsh is installed
command -v zsh >/dev/null 2>&1 || { echo >&2 "I require zsh but it's not installed.  Aborting."; exit 1; }

git clone git@github.com:david-ds/dotfiles.git ~/.dotfiles

cp ~/.dotfiles/.zshrc ~/.zshrc --backup=simple --suffix=.backup

source ~/.zshrc

echo "Installation completed!"
