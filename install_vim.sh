#! /bin/bash

PWD=$(pwd)

rm -f ~/.vimrc && ln -s $PWD/vim/vimrc ~/.vimrc &&
rm -rf ~/.vim && ln -s $PWD/vim ~/.vim &&
echo "Linked vim config!" ||
echo "Failed to link vim config!"
