#!/bin/bash

if [ -f ~/.vimrc ]
then
  echo "not installing vim, you already have a .vimrc"
else
  cp vimrc ~/.vimrc
  if [ "$?" -ne 0  ]
  then
    echo "error copying vimrc file"
  fi

  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  if [ "$?" -ne 0  ]
  then
    echo "error copying vimrc file"
  fi
fi
