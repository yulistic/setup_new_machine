#!/bin/bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm   # Get tpm plugin.
ln -f -s $(pwd)/tmux.conf ~/.tmux.conf
