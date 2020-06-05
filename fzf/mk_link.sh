#!/bin/bash
DOTFILE_NAME="fzf.zsh"
FILEPATH="$HOME/.${DOTFILE_NAME}"
if [ -h "$FILEPATH" ] ; then
    rm -rf "$FILEPATH"
elif [ -f "$FILEPATH" ] ; then
    mv "$FILEPATH" "$FILEPATH.old"
    echo "Original file was renamed as ${FILEPATH}.old"
fi
ln -s $(pwd)/${DOTFILE_NAME} "$FILEPATH"
ls -alh $FILEPATH

DOTFILE_NAME="fzf.bash"
FILEPATH="$HOME/.${DOTFILE_NAME}"
if [ -h "$FILEPATH" ] ; then
    rm -rf "$FILEPATH"
elif [ -f "$FILEPATH" ] ; then
    mv "$FILEPATH" "$FILEPATH.old"
    echo "Original file was renamed as ${FILEPATH}.old"
fi
ln -s $(pwd)/${DOTFILE_NAME} "$FILEPATH"
ls -alh $FILEPATH
