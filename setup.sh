#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

if [ `find ~ -maxdepth 1 -name '.bashrc' | wc -l` -eq 0 ]; then
    echo '.bashrc Not exist'
    touch ~/.bashrc
else
    mv ~/.bashrc ~/.bashrc_backup
    echo 'backup .bashrc to .bashrc_backup'
fi
cp .bashrc ~/
cp .bash_aliases ~/

if [ `find ~ -maxdepth 1 -name '.vimrc' | wc -l` -eq 0 ]; then
    echo '.vimrc Not exist'
    touch ~/.vimrc
else
    mv ~/.vimrc ~/.vimrc_backup
    echo 'backup .vimrc to .vimrc_backup'
fi
cp .vimrc ~/

cp -r bundle ~/.vim/
cp .gitconfig ~/
source ~/.bashrc
