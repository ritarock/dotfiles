set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8

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
" ESCキー2通しでハイライトの切り替え
nnoremap <silent><Esc><Esc> : <C-u>set nohlsearch!<CR>

" -----------------------------------
" カーソルの設定
" -----------------------------------
" カーソルの左右移動で行末から次の行頭へ移動が可能になる
set whichwrap =b,s,h,l,<,>,[,],~
" 行番号の表示
set number
" 行の強調
set cursorline
" 列の強調
" set cursorcolumn
" カーソルラインをハイライト
set cursorline

" -----------------------------------
" 括弧・タグジャンプの設定
" -----------------------------------
" 括弧の対応関係の表示
set showmatch

" -----------------------------------
" コマンド補完
" -----------------------------------
" コマンドモードの補完
set wildmenu
" 保存するコマンド履歴の数
set history=500

" -----------------------------------
" マウス操作を有効にする
" -----------------------------------
if has("mouse") " Enable the use of the mouse in all modes
  set mouse=a
endif

" -----------------------------------
" jjでインサートモードを抜ける
" -----------------------------------
inoremap <silent> jj <ESC>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/ubuntu/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/ubuntu/.vim/dein')
  call dein#begin('/home/ubuntu/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/ubuntu/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " テーマ
  call dein#add('tomasr/molokai')
  " gccで現在の行をコメントアウト
  call dein#add('tomtom/tcomment_vim')
  " 閉じ括弧を自動で入力
  call dein#add('Townk/vim-autoclose')
  
  
  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

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
