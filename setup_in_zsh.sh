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
### Add some configuration to ~/.fzf.zsh and ~/.fzf.bash
# Use fd instead of find.
echo "export FZF_DEFAULT_COMMAND='fd --type f'" >> ~/.fzf.zsh
echo 'export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"' >> ~/.fzf.zsh
echo "export FZF_DEFAULT_COMMAND='fd --type f'" >> ~/.fzf.bash
echo 'export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"' >> ~/.fzf.bash

# Also follows symlink and also shows hidden files.
echo "export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'" >> ~/.fzf.zsh
echo "export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'" >> ~/.fzf.bash

echo "[fd]"
# Use cargo to install fd from source code because Ubuntu 18.04 and earlier doesn't provide fd package via apt.
# Install rustup (including cargo)
curl https://sh.rustup.rs -sSf | sh
# install fd
~/.cargo/bin/cargo install fd-find
