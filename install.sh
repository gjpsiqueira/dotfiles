#!/bin/bash

source colors.sh

DOTFILES="$HOME/Development/dotfiles"

if [[ -d $DOTFILES ]]; then
    print 'Checking dotfiles directory'
else
    print 'Cloning dotfiles'
    git clone https://github.com/gjpsiqueira/dotfiles.git $DOTFILES
fi

cd $DOTFILES
source config/global.sh