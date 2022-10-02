#!/bin/bash

if test -f "/etc/profile.d/vte-2.91.sh"; then
	sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
fi
sudo apt install editorconfig fonts-firacode fonts-powerline
