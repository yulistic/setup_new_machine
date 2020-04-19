#!/bin/bash
git submodule update --init
(cd vim && git submodule update --init)

echo "[Install packages]"
./install_pkgs.sh

echo "Change shell."
chsh -s /usr/bin/zsh

echo "Relogin to zsh and do remaining setup by executing: ./setup_in_zsh.sh"
