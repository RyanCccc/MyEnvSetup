#!/bin/bash
if [ $# -eq 1 ]; then
    if [ $1 = "--update" ]; then
        cp .bash_aliases ~/
        echo 'Finish copying bash config'
        cp .vimrc ~/
        echo 'Finish copying vim config'
    elif [ $1 = "--collect" ]; then
        ./collect.sh
        echo 'Finish collecting bash and vim settings'
    fi
else
    echo 'Git Submodule'
    git submodule update --init

    echo 'Install jedi'
    pip install jedi

    echo 'Install jedi'
    pip install flake8

    echo 'Installing vim-pathogen'
    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
        curl -Sso ~/.vim/autoload/pathogen.vim \
            https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

    echo 'Installing vim bundles'
    cp -r bundle ~/.vim/

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

    echo 'Copying git config'
    cp .gitconfig ~/

    echo 'source .bashrc'
    source ~/.bashrc
fi
