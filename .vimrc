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
set history=200             "How many lines of history to save

" augroup vimrc
" autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
" autocmd! FileType css  setlocal shiftwidth=2 tabstop=2 softtabstop=2
" autocmd! FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
" autocmd! FileType vim  setlocal shiftwidth=2 tabstop=2 softtabstop=2
" augroup END

" ==========================
" status line setting
" ==========================
set laststatus=2            "Always show the status bar
set showmode                "Show mode
set ruler                   "Show row/col and percentage
set cmdheight=2             "Command line's height is 2

" ==========================
" serach setting
" ==========================
set incsearch               "Search as you type
set ignorecase              "Case insensitive
set smartcase               "Lets you search for ALL CAPS
set hlsearch                "Hilight searching

" ==========================
" keymap setting
" ==========================
nmap j gj
nmap k gk
inoremap <silent> jj <ESC>
nnoremap <silent><Esc><Esc> : <C-u>set nohlsearch!<CR>
nnoremap ; :
" Highlight the word under the cursor in normal mode with 2 spaces
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>

" ==========================
" Plugin
" ==========================
" Install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

"Show tree
Plug 'scrooloose/nerdtree'
"Show dotfile
let NERDTreeShowHidden = 1
"Causes all trailing whitespace to be highlighted in red
Plug 'bronson/vim-trailing-whitespace'
"Power up status line
Plug 'itchyny/lightline.vim'
"Easy commentout (gcc)
Plug 'tomtom/tcomment_vim'
"Auto insert braces/parens/etc
Plug 'Townk/vim-autoclose'
"Syntax highlight ES6
Plug 'othree/yajs.vim'
"Git config
Plug 'airblade/vim-gitgutter'
"GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'
"Run commands quickly
Plug 'thinca/vim-quickrun'
"Split right
set splitright
let g:quickrun_config={'*': {'vsplit': ''}}

call plug#end()
