#! /bin/bash

PWD=$(pwd)

rm -rf ~/.config/base16-shell &&
ln -s $PWD/config/base16-shell ~/.config/base16-shell &&
echo "Linked base16-shell config!" ||
echo "Failed to link base16-shell config!"
