#!/bin/bash
echo Setting up vim.
(cd vim && ./setup.sh && echo Done.)

echo Setting up mkcscope.
(cd mkcscope && sudo ./setup.sh && echo Done.)

echo Setting up tmux.
(cd tmux && ./setup.sh && echo Done.)

echo Setting up git.
(cd git_config && ./mk_link.sh && echo Done.)
