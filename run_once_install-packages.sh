#!/bin/bash

mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts \
  && wget -q -nc https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf \
  && wget -q -nc https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf \
  && wget -q -nc https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf \
  && wget -q -nc https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

if test -f "/etc/profile.d/vte-2.91.sh"; then
	sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
fi
sudo apt install tilix kakoune micro editorconfig fonts-firacode fonts-powerline
# deb-get https://github.com/wimpysworld/deb-get
sudo deb-get install gh
