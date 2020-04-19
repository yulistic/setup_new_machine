#!/bin/zsh
echo "[Install zsh]"
./setup_zsh.sh

echo "[vim]"
(cd vim && ./setup.sh && echo Done.)

echo "[mkcscope]"
(cd mkcscope && sudo ./setup.sh && echo Done.)

echo "[tmux]"
(cd tmux && ./setup.sh && echo Done.)

echo "[git]"
(cd git_config && ./mk_link.sh && echo Done.)

echo "[fzf]"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
