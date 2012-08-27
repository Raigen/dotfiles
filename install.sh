#!/bin/bash

# cd vim

ln -s ~/bin/dotfiles/bashrc ~/.bashrc
ln -s ~/bin/dotfiles/vimrc.vim ~/.vimrc
ln -s ~/bin/dotfiles/vim ~/.vim

git submodule update --init
