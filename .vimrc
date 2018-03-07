" ==========================
" BASE SETTING
" ==========================
" 文字コードを指定
set encoding=utf-8
" 起動時のメッセージを消す
set shortmess+=I
" カーソルの左右移動で行末から次の行頭へ移動が可能になる
set whichwrap =b,s,h,l,<,>,[,],~
" 行番号の表示
set number
" 行の強調
set cursorline
" カーソルラインをハイライト
set cursorline
" swapファイルを作らない
set noswapfile
" バックスペースを有効にする
set backspace=indent,eol,start
" バックアップの設定
"set backup
"set backupdir=$HOME/vimbackup
" renameの設定
" 元ネタ：http://vim-jp.org/vim-users-jp/2009/05/27/Hack-17.html
" :Rename {新しいファイル名}
command! -nargs=1 -complete=file Rename file <args> | call delete(expand('#'))

" python3をデフォルトにする(文字コードを指定ON)
" let g:python3_host_prog = expand('~/.pyenv/shims/python3')

" -----------------------------------
" タブ・インデントの設定
" -----------------------------------
" タブ入力を複数の空白入力に置き換える
set expandtab
" タブ文字の幅
set tabstop=4
" 連続空白に対してタブやバックスペースでカーソルがが動く幅
set softtabstop=4
" 改行前のインデントを維持する
set autoindent
" 改行前の構文をチェックし次の行のインデントを増減する
set smartindent
" smartindentで増減する幅
set shiftwidth=4
" 括弧の対応関係の表示
set showmatch
" コマンドモードの補完
set wildmenu
" 保存するコマンド履歴の数
set history=300

" -----------------------------------
" ステータスラインの設定
" -----------------------------------
" ステータスラインを常に表示
set laststatus=2
" 現在のモードを表示
set showmode
"カーソルの現在位置を表示
set ruler

" -----------------------------------
" 文字列検索の設定
" -----------------------------------
" 1文字入力毎に検索
set incsearch
" 検索パターンに大文字小文字を区別しない
set ignorecase
" 検索パターンに大文字を含んでいたら大文字小文字の区別をする
set smartcase
" 検索文字のハイライト
set hlsearch

" -----------------------------------
" キーバインド
" -----------------------------------
" jjでインサートモードを抜ける
inoremap <silent> jj <ESC>
" ESCキー2通しでハイライトの切り替え
nnoremap <silent><Esc><Esc> : <C-u>set nohlsearch!<CR>

" -----------------------------------
" プラグインの設定
" -----------------------------------
" テーマの設定
"colorscheme molokai
colorscheme desert
set t_Co=256
syntax on
" 自動的にvim-indent-guidesをオン
let g:indent_guides_enable_on_vim_startup = 1
" ctl + e でツリーを開く
nnoremap <silent><C-e> :NERDTreeToggle<CR>
