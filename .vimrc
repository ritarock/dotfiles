set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8

" ==========================
" BASE SETTING
" ==========================
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
" ヤンクした時にクリップボードにコピーする
set clipboard=unnamed,autoselect
" バックスペースを有効にする
set backspace=indent,eol,start
" 元ネタ：http://vim-jp.org/vim-users-jp/2009/05/27/Hack-17.html
" :Rename {新しいファイル名}
command! -nargs=1 -complete=file Rename file <args> | call delete(expand('#'))

augroup vimrc
    autocmd!
   " set filetype=xxx した場合に任意の filetype を設定する
    autocmd FileType js set filetype=javascript
    autocmd FileType py set filetype=python
augroup END

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
" インサートモードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
" ノーマルモードでスペースを挿入
nnoremap <C-Space> i<Space><Esc><Right>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ubuntu/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ubuntu/.vim/dein')
  call dein#begin('/home/ubuntu/.vim/dein')
  " call dein#local(expand('自作プラグインのディレクトリ指定'))

  " Let dein manage dein
  " Required:
  call dein#add('/home/ubuntu/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " テーマ
  call dein#add('tomasr/molokai')
  " control + -で選択中の行をコメントアウト
  call dein#add('tomtom/tcomment_vim')
  " 閉じ括弧を自動で入力
  call dein#add('Townk/vim-autoclose')
  " インデントを可視化
  "call dein#add('nathanaelkane/vim-indent-guides')
  " 自動的にvim-indent-guidesをオン
  let g:indent_guides_enable_on_vim_startup = 1
  " ステータスラインの内容の表示強化
  call dein#add('itchyny/lightline.vim')
  " =で両端にスペース追加
  call dein#add('kana/vim-smartchr')
  inoremap <buffer> <expr> = smartchr#loop(' = ', ' == ', '=')
  
  " You can specify revision/branch/tag.
  " call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins onstartup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

colorscheme molokai
set t_Co=256
syntax on

" -----------------------------------
" Plugin 
" -----------------------------------
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"call plug#begin('~/.vim/plugged')

"" テーマ
"Plug 'tomasr/molokai'
"" control + -で選択中の行をコメントアウト
"Plug 'tomtom/tcomment_vim'
"" 閉じ括弧を自動で入力
"Plug 'Townk/vim-autoclose'
"" ステータスラインの内容の表示強化
"Plug 'itchyny/lightline.vim'

"call plug#end()
