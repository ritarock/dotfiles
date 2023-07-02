" BASE CONFIGURATION
" utf-8 by default
set encoding=UTF-8

" enable line change with right or left cursor move
set whichwrap =b,s,h,l,<,>,[,],~

" show line number
set number

" show cursor line
set cursorline

" don't make swapfile
set noswapfile

" don't make undofile
set noundofile

" enable backspace
set backspace=indent,eol,start

" show command
set showcmd

" colorscheme configuration
set background=dark
set t_Co=256
syntax on
colorscheme desert

" not beep
set visualbell

" disable preview window
set completeopt-=preview

" TAB, INDENT CONFIGURATION
" replace space with tab
set expandtab

" the one true Tab
set tabstop=2

" spaces 'feel' like tabs
set softtabstop=2

" carry over indenting from previous line
set autoindent

" set smartindent
set smartindent

" smartindent's space is 2
set shiftwidth=2

" hilight matching braces/parens/etc
set showmatch

" show possible completions on command line
set wildmenu

" how many lines of history to save
set history=200

" show whitespace as special chars - see listchars
set list

" unicode characters for various things
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

" SEARCH CONFIGURATION
" search when type
set incsearch
" case insensitive
set ignorecase
" search for ALL CAPS
set smartcase
" hilight searching
set hlsearch

" STATUS LINE CONFIGURATION
" always show the status bar
set laststatus=2
" show mode
set showmode
" show row/col and percentage
set ruler
" command line's height is 2
set cmdheight=2

" KEYMAPPING CONFIGURATION
nmap j gj
nmap k gk
nmap <S-h> ^
nmap <S-l> $
nmap <Leader>p "+p
nmap <Leader>P "+P

nmap Q <silent>
nmap q: <silent>
nmap K <silent>
nmap <Leader>w :w<CR>

nmap n nzz
nmap N Nzz

nnoremap x "_x
nnoremap s "_s
nnoremap Y y$

nnoremap + <C-a>
nnoremap - <C-x>

imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
inoremap <silent> jj <ESC>

vnoremap <S-h> ^
vnoremap <S-l> $

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
