#!/bin/bash


mkdir -p ~/.tmp/vimbackup
cp -f ../vimrc/.vimrc ../vimrc/.vimrc.pluginconfig ~/

# 置換前の文字列と置換後の文字列
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

# 置換後の文字列が空の場合に付加する文字列
marker="\""

# 元ファイル
source_file="../vimrc/.vimrc.expandcommands"

# 出力ファイル
output_file="~/.vimrc.expandcommands"

# ファイル内の文字列を置換して、置換後文字列が空の場合にはマーカーを付加する
sed "s/$search/$replace/g;/${replace:+\`/!b};/${replace:+\`/i $marker}" "$source_file" > "$output_file"

curl -fLo ~/.vim/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
