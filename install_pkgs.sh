#!/bin/bash
#PKGS="vim ctags cscope tmux htop zsh nvim python python3 ruby-dev"
PKGS="vim exuberant-ctags cscope tmux htop zsh python3-pip python3 python3-pip ruby-dev"

if [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    sudo yum install -y $PKGS
    echo "Install packages for CentOS/Fedora done."
elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS=Debian
    VER=$(cat /etc/debian_version)
    sudo apt-get install -y $PKGS
    echo "Install packages for $OS done."
elif [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
    echo "$OS is not supported (1)."
    exit 1
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
    sudo apt-get install -y $PKGS
    echo "Install packages done."
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
    sudo apt-get install -y $PKGS
    echo "Install packages for $OS done."
elif [ -f /etc/SuSe-release ]; then
    # Older SuSE/etc.
    echo "$OS is not supported (5)."
    exit 1
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
    VER=$(uname -r)
    echo "$OS is not supported (6)."
    exit 1
fi

# Install neovim.
BIN_DIR="${HOME}/.local/bin"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p $BIN_DIR
mv nvim.appimage $BIN_DIR
ln -s $BIN_DIR/nvim.appimage $BIN_DIR/nvim
