#!/bin/bash

# 初期セットアップ(.vim以下全削除)
command rm -r $HOME/.vim

mkdir -p ~/.tmp/vimbackup
cp -f ../vimrc/.vimrc ../vimrc/.vimrc.pluginconfig ~/

# InTheBloom_Libraryへのパス自動登録(~/以下に存在するなら)
search="LIBRARY_PATH"
replace=$(find /home -type d -name "InTheBloom_Library" -print -quit 2>/dev/null)

marker="\""

source_file="../vimrc/.vimrc.expandcommands"

if [ -z "$replace" ]; then
  sed "/$search/ s/^/$marker/" "$source_file" > $HOME/.vimrc.expandcommands
else
  sed "s#$search#$replace#g" "$source_file" > $HOME/.vimrc.expandcommands
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
