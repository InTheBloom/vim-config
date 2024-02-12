" 文字コード関連
set encoding=utf-8 " バッファ上での文字コード
set fileencodings=utf-8,cp932 " 読み込み時の候補
set fileencoding=utf-8 " 書き込み時の文字コード
set fileformats=unix,dos,mac " 改行コードの候補

" 一時ファイル関連
set directory=. " .swpファイル
set nobackup
set noundofile

" インデント関連
set autoindent " 改行時に前の行と同じだけインデント
set smartindent " 改行時にネストに応じてインデント
set breakindent " ウィンドウ幅由来の改行にもインデントを適用
set tabstop=4 " tab文字に対する見た目の幅
set softtabstop=4 " insertモードにおける<Tab>キーと<BS>キー入力に対する見た目の幅
set shiftwidth=4 " インデントの見た目の空白数
set expandtab " <Tab>で空白を挿入

" 画面の見た目制御
set number
set cursorline
syntax enable
set title " 編集中ファイル情報を表示
set laststatus=2 "画面下部のステータスラインを常時オン"
set nolist " 非表示文字を表示しない
set hlsearch " 検索時のハイライト
set ruler " カーソルの相対位置を表示
set wildmenu wildmode=list:full " 画面下部コマンドの候補を表示

" その他
set backspace=indent,eol,start " backspaceの挙動の設定
set belloff=all " ビープ音オフ
set hidden " バッファ移動に保存を強制しない
set textwidth=0 " 勝手に改行をオフ
set incsearch " インクリメントサーチ
set ignorecase " 検索時の大文字/小文字を同一視
set matchpairs=(:),{:},[:],<:>

" netrw設定
let g:netrw_banner=0
let g:netrw_liststyle=0
let g:netrw_fastbrowse=1

" terminal関連
if has('win32') || has('win64')
    set shell=pwsh.exe
else
    set shell=/bin/bash " Non-windows
    set t_Co=256
endif


" コマンド類のファイル読み込み
if filereadable(expand('~/.vimrc-excmd'))
    source ~/.vimrc-excmd
endif

" プラグイン設定の読み込み
if filereadable(expand('~/.vimrc-plug'))
    source ~/.vimrc-plug
endif

" カラースキーム/ハイライト設定
colorscheme default

hi clear CursorLine
hi clear CursorLineNr
    " 背景透明化
hi Normal ctermbg=NONE
hi NonText ctermbg=NONE
hi SpecialKey ctermbg=NONE
hi EndOfBuffer ctermbg=NONE
