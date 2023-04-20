New-Item -ItemType Directory -Force $HOME\.tmp\vimbackup
Copy-Item -Path ../vimrc/.vimrc -Destination ~/_vimrc -Force
Copy-Item -Path ../vimrc/.vimrc.expandcommands -Destination ~/.vimrc.expandcommands -Force
Copy-Item -Path ../vimrc/.vimrc.pluginconfig -Destination ~/.vimrc.pluginconfig -Force
curl -fLo %USERPROFILE%\vimfiles\pack\jetpack\opt\vim-jetpack\plugin\jetpack.vim --create-dirs https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim
