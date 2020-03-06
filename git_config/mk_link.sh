#!/bin/bash
FILEPATH="$HOME/.gitconfig"
if [ -h "$FILEPATH" ] ; then
    rm -rf "$FILEPATH"
elif [ -f "$FILEPATH" ] ; then
    mv "$FILEPATH" "$FILEPATH.old"
    echo "Original file was renamed as .gitconfig.old"
fi

ln -s $(pwd)/gitconfig "$FILEPATH"
ls -alh $FILEPATH
