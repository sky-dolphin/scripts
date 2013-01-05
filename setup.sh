#!/bin/bash

DOT_FILES=(.zshrc .zshrc.alias .zshrc.linux .zshrc.osx .tmux.conf .inputrc .vimrc .vimrc.apperance .vimrc.basic .vimrc.colors .vimrc.completion .vimrc.editing .vimrc.encoding .vimrc.indent .vimrc.search .vimrc.statusline .gitconfig .gitignore)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/Git/dotfiles/$file $HOME/$file
done
cp $HOME/Git/scripts/tmuxx.sh /usr/bin/tmuxx
