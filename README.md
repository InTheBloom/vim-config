# InTheBloom's vim settings

## Recommended usage
1. Create a symbolic link under your home directory.
```bash
git clone https://github.com/InTheBloom/vim-config
ln -fs vimconfig/.vimrc ~/.vimrc
ln -fs vimconfig/.vimrc-excmd ~/.vimrc-excmd
ln -fs vimconfig/.vimrc-plug ~/.vimrc
```

2. Get the plugin with curl.
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Install plugins
```vim
:PlugInstall
```
