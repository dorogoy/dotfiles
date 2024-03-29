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
sudo apt install terminator kakoune micro editorconfig fonts-firacode fonts-powerline fzf

mkdir -p ~/bin
cd ~/bin && curl -L $(curl -s https://api.github.com/repos/variadico/noti/releases/latest | awk '/browser_download_url/ { print $2 }' | grep 'linux-amd64' | sed 's/"//g') | tar -xz

# Install nixshell
sh <(curl -L https://nixos.org/nix/install) --daemon

