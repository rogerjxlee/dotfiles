#! /bin/bash

PWD=$(pwd)

rm -f ~/.tmux.conf && ln -s $PWD/tmux/tmux.conf ~/.tmux.conf &&
echo "Linked tmux config!" ||
echo "Failed to link tmux config!"
