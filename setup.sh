#!/bin/bash
echo 'Git Submodule'
git submodule update --init

echo 'Install jedi'
sudo pip install jedi

echo 'Installing vim-pathogen'
sudo apt-get install curl
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    curl -Sso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

if [ `find ~ -maxdepth 1 -name '.bashrc' | wc -l` -eq 0 ]; then
    echo '.bashrc Not exist'
    echo 'Creating .bashrc file'
    touch ~/.bashrc
else
    mv ~/.bashrc ~/.bashrc_backup
    echo 'backup .bashrc to .bashrc_backup'
fi
cp .bashrc ~/
cp .bash_aliases ~/
echo 'Finish copying bash config'

if [ `find ~ -maxdepth 1 -name '.vimrc' | wc -l` -eq 0 ]; then
    echo '.vimrc Not exist'
    echo 'Creating .vimrc file'
    touch ~/.vimrc
else
    mv ~/.vimrc ~/.vimrc_backup
    echo 'backup .vimrc to .vimrc_backup'
fi
cp .vimrc ~/
echo 'Finish copying vim config'

echo 'Installing vim bundles'
cp -r bundle ~/.vim/

echo 'Copying git config'
cp .gitconfig ~/

echo 'source .bashrc'
source ~/.bashrc
