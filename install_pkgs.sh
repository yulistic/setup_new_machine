#!/bin/bash
if [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    sudo yum install -y vim ctags cscope tmux htop
    echo "Installation finished for CentOS/Fedora."

elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS=Debian
    VER=$(cat /etc/debian_version)
    echo "$OS is not supported (4)."
    exit 1
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
    echo "$OS is not supported (2)."
    exit 1
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
    sudo apt-get install -y vim ctags cscope tmux htop
    echo "$OS is not supported (3)."
    exit 1
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


