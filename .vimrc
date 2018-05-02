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
" swapファイルを作らない
set noswapfile
" バックスペースを有効にする
set backspace=indent,eol,start
" 入力中のコマンドを表示する
set showcmd
" カラースキーム
colorscheme desert
set t_Co=256
syntax on
" バックアップの設定
"set backup
"set backupdir=$HOME/vimbackup
" python3をデフォルトにする(文字コードを指定ON)
"let g:python3_host_prog = '/usr/local/bin/python3'

" ==========================
" タブ・インデントの設定
" ==========================
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
set history=500
" ruby,html,cssのみタブの幅を2にする
augroup vimrc
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css  setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType vim  setlocal shiftwidth=2 tabstop=2 softtabstop=2
augroup END

" ==========================
" ステータスラインの設定
" ==========================
" ステータスラインを常に表示
set laststatus=2
" 現在のモードを表示
set showmode
"カーソルの現在位置を表示
set ruler
" コマンドラインの高さ
set cmdheight=2

" ==========================
" 文字列検索の設定
" ==========================
" 1文字入力毎に検索
set incsearch
" 検索パターンに大文字小文字を区別しない
set ignorecase
" 検索パターンに大文字を含んでいたら大文字小文字の区別をする
set smartcase
" 検索文字のハイライト
set hlsearch

" ==========================
" キーマップの設定
" ==========================
" jjでインサートモードを抜ける
inoremap <silent> jj <ESC>
" ESCキー2通しでハイライトの切り替え
nnoremap <silent><Esc><Esc> : <C-u>set nohlsearch!<CR>
" ;を:に置き換え
nnoremap ; :
" normal modeでスペース2回でカーソル下の単語をハイライト
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

" ==========================
" プラグイン
" ==========================
" vim-plug導入
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
" ツリー表示
Plug 'scrooloose/nerdtree'
" 末尾の可視化
Plug 'bronson/vim-trailing-whitespace'
" ステータスバーを強化
Plug 'itchyny/lightline.vim'
" インデントの可視化
Plug 'nathanaelkane/vim-indent-guides'
" 常にインデントの可視化
let g:indent_guides_enable_on_vim_startup = 1
" helpとnerdtreeは除く
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree']
" コメントアウトの強化
Plug 'tomtom/tcomment_vim'
" 括弧を自動で挿入
Plug 'Townk/vim-autoclose'
" ES6のシンタックスハイライト
Plug 'othree/yajs.vim'
" gitの拡張
Plug 'airblade/vim-gitgutter'
" +/-の見た目を変更
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'
" vim上でnodejsを実行
Plug 'thinca/vim-quickrun'
" 画面分割する
set splitright
let g:quickrun_config={'*': {'vsplit': ''}}

call plug#end()
