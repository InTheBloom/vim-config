#!/bin/bash


mkdir -p ~/.tmp/vimbackup
cp -f ../vimrc/.vimrc ../vimrc/.vimrc.pluginconfig ~/

# $BCV49A0$NJ8;zNs$HCV498e$NJ8;zNs(B
search="LIBRARY_PATH"
replace=""

search_dir() {
    local key="/InTheBloom_Library"
    local dir="$1"

    if [[ "$dir" == *"$key" ]] && [[ -z "$result" ]]; then
        replace="$dir"
    fi

    for sub_dir in "$dir"/*/; do
        if [[ -d "$sub_dir" ]]; then
            search_dir "$sub_dir"
        fi
    done
}

search_dir "/home"

# $BCV498e$NJ8;zNs$,6u$N>l9g$KIU2C$9$kJ8;zNs(B
marker="\""

# $B85%U%!%$%k(B
source_file="../vimrc/.vimrc.expandcommands"

# $B=PNO%U%!%$%k(B
output_file="~/.vimrc.expandcommands"

# $B%U%!%$%kFb$NJ8;zNs$rCV49$7$F!"CV498eJ8;zNs$,6u$N>l9g$K$O%^!<%+!<$rIU2C$9$k(B
sed "s/$search/$replace/g;/${replace:+\`/!b};/${replace:+\`/i $marker}" "$source_file" > "$output_file"

curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
