#!/bin/bash
sudo pacman -Syu
sudo pacman -S neovim fzf zsh tailscale sudo openssh 

# set up systemd-resolveconf
# do the entire arch install process
# with customizable hostname

ZSHRC_SOURCE=$(realpath zshrc)
ln -s "${ZSHRC_SOURCE}" ~/.zshrc
