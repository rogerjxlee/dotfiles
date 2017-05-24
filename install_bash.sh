#! /bin/bash

PWD=$(pwd)

rm -f ~/.bash_profile && ln -s $PWD/bash/bash_profile ~/.bash_profile &&
rm -f ~/.bashrc && ln -s $PWD/bash/bashrc ~/.bashrc &&
echo "Linked bash config!" ||
echo "Failed to link bash config!"
