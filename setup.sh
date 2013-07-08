#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

mv ~/.bashrc ~/.bashrc_backup
cp .bashrc ~/
mv ~/.vimrc ~/.vimrc_backup
cp .vimrc ~/
cp -r bundle ~/.vim/
cp .gitconfig ~/
source ~/.bashrc
