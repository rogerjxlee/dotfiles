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

rm -f ~/.bash_profile && ln -s $PWD/bash/bash_profile ~/.bash_profile
rm -f ~/.bashrc && ln -s $PWD/bash/bashrc ~/.bashrc
echo "Linked bash config!"

rm -rf ~/.config/base16-shell &&
ln -s $PWD/config/base16-shell ~/.config/base16-shell &&
echo "Linked base16-shell config!" &&

rm -f ~/.vimrc && ln -s $PWD/vim/vimrc ~/.vimrc &&
rm -rf ~/.vim && ln -s $PWD/vim ~/.vim &&
echo "Linked vim config!" &&

link_all_files_in_dir $PWD/atom ~/.atom &&
echo "Linked atom config!" ||
echo "Install failed! :("
