" vim基本設定
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8,windows-1252,iso-8859-1
set fileformats=unix,dos,mac
set directory=~/.tmp/vimbackup
set backupdir=~/.tmp/vimbackup
set belloff=all
set noundofile
set number
set relativenumber
set cursorline
set hidden
set backspace=2
set splitbelow
set termwinsize=15x0
set noequalalways
set autoindent
set smartindent
set breakindent
set textwidth=0
set title
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set nolist
syntax on
set hlsearch
set ruler
set incsearch
set wildmenu wildmode=list:full
set ignorecase

if has('win32') || has('win64')
else
    set t_Co=256 " Non-windows
endif

colorscheme industry

" コマンド類のファイル読み込み
if filereadable(expand('~/.vimrc.expandcommands'))
    source ~/.vimrc.expandcommands
endif

" プラグイン設定の読み込み
if filereadable(expand('~/.vimrc.pluginconfig'))
    source ~/.vimrc.pluginconfig
endif

" netrw設定
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_fastbrowse=1

" ハイライト設定
hi CursorLine cterm=NONE term=NONE ctermfg=NONE ctermbg=242

" 背景透明化
hi Normal ctermbg=NONE
hi NonText ctermbg=NONE
hi SpecialKey ctermbg=NONE
hi EndOfBuffer ctermbg=NONE
