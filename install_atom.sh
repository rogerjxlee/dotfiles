#! /bin/bash

PWD=$(pwd)

link_all_files_in_dir () {
  src=$1
  dst=$2
  for file in $src/*; do
    basename=$(basename $file)
    rm -f $dst/$basename && ln -s $src/$basename $dst
  done
}

link_all_files_in_dir $PWD/atom ~/.atom &&
echo "Linked atom config!" ||
echo "Failed to link atom config!"
