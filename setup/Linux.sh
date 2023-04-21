#!/bin/bash

mkdir -p ~/.tmp/vimbackup
cp -f ../vimrc/.vimrc ../vimrc/.vimrc.pluginconfig ~/

# 置換前の文字列と置換後の文字列
search="LIBRARY_PATH"
replace=$(find /home -type d -name "InTheBloom_Library" -print -quit 2>/dev/null)

# 置換後の文字列が空の場合に付加する文字列
marker="\""

# 元ファイル
source_file="../vimrc/.vimrc.expandcommands"

# ファイル内の文字列を置換して、置換後文字列が空の場合にはマーカーを付加する
if [ -z "$replace" ]; then
  sed "/$search/ s/^/$marker/" "$source_file" > $HOME/.vimrc.expandcommands
else
  sed "s#$search#$replace#g" "$source_file" > $HOME/.vimrc.expandcommands
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
