#!/bin/bash
ZSHRC_SOURCE=$(realpath zshrc)
ln -s "${ZSHRC_SOURCE}" ~/.zshrc
if [ -f /etc/os-release ]; then
  # freedesktop.org and systemd
  . /etc/os-release
  OS=$NAME
elif [[ $OSTYPE == 'darwin'* ]]; then
  OS=macOS
else
  echo 'Failed to detect os'
  exit 1
fi

if [ "$OS" = "Arch Linux" ]; then
  ./arch.bash
fi
