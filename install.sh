#!/bin/bash

if [ -f ~/.bashrc ]
then
    mv ~/.bashrc ~/.bashrc.backup
fi

if [ -f ~/.gitconfig ]
then
    mv ~/.gitconfig ~/.gitconfig.backup
fi

ln -s ~/bin/dotfiles/.bashrc ~/.bashrc
ln -s ~/bin/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/bin/dotfiles/.gitignore ~/.gitignore

