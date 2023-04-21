#!/bin/bash

mkdir -p ~/.tmp/vimbackup
cp -f ../vimrc/.vimrc ../vimrc/.vimrc.pluginconfig ~/

# $BCV49A0$NJ8;zNs$HCV498e$NJ8;zNs(B
search="LIBRARY_PATH"
replace=$(find /home -type d -name "InTheBloom_Library" -print -quit 2>/dev/null)

# $BCV498e$NJ8;zNs$,6u$N>l9g$KIU2C$9$kJ8;zNs(B
marker="\""

# $B85%U%!%$%k(B
source_file="../vimrc/.vimrc.expandcommands"

# $B%U%!%$%kFb$NJ8;zNs$rCV49$7$F!"CV498eJ8;zNs$,6u$N>l9g$K$O%^!<%+!<$rIU2C$9$k(B
if [ -z "$replace" ]; then
  sed "/$search/ s/^/$marker/" "$source_file" > $HOME/.vimrc.expandcommands
else
  sed "s#$search#$replace#g" "$source_file" > $HOME/.vimrc.expandcommands
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
