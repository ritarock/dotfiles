" ==========================
" BASE SETTING
" ==========================
set encoding=utf-8          "UTF-8 by default
set shortmess+=I            "Remove splash screen
set whichwrap =b,s,h,l,<,>,[,],~  "Enable line change with right or left cursor move
set number                  "Set line number
set cursorline              "Set cursor line
set noswapfile              "Don't make swapfile
set backspace=indent,eol,start "Enable backspace
set showcmd                 "Show command
colorscheme desert
set t_Co=256
syntax on

" ==========================
" TAB,indent setting
" ==========================
set expandtab               "Replace space with TAB
set tabstop=2               "The one true Tab
set softtabstop=2           "Spaces 'feel' like tabs
set autoindent              "Carry over indenting from previous line
set smartindent             "Set smartindent
set shiftwidth=2            "Smartindent's space is 2
set showmatch               "Hilight matching braces/parens/etc
set wildmenu                "Show possible completions on command line
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
" 隠しファイルを表示
let NERDTreeShowHidden = 1
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
