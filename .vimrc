"""""""""""""""""""""
" vimrc configuration
"""""""""""""""""""""

" install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"""""""""""""""""""""
" plugin configuration
"""""""""""""""""""""
call plug#begin('~/.vim/plugged')

""" BASE
" customize status/tab line
Plug 'vim-airline/vim-airline'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#default#layout = [['a', 'c'], ['x', 'y', 'z']]

" auto insert braces/parens/etc
Plug 'cohama/lexima.vim'

" colorscheme
Plug 'tomasr/molokai'

" help in Japanese
Plug 'vim-jp/vimdoc-ja'
set helplang=ja,en

""" LANGUAGE
" syntax highlight ES6
Plug 'othree/yajs.vim'

" syntax typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" setting Markdown
Plug 'tpope/vim-markdown'
" syntax Markdwon
let g:markdown_fenced_languages = [
\  'bash=sh',
\  'css',
\  'go',
\  'html',
\  'javascript',
\  'js=javascript',
\  'json=javascript',
\  'python',
\  'ruby',
\  'yaml',
\]
" use Markdown
vnoremap <Leader>mdu ygvs[](<c-r>")<ESC>?[]<cr>a

" Golang plugin
Plug 'fatih/vim-go'

""" TOOLS
" show tree
Plug 'scrooloose/nerdtree'
" show dotfiles
let NERDTreeShowHidden = 1
nmap \e :NERDTreeToggle<CR>

" easy commentout
Plug 'tomtom/tcomment_vim'

" git configuration
Plug 'airblade/vim-gitgutter'
" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

" run commands quickly
Plug 'thinca/vim-quickrun'

" easy move
Plug 'easymotion/vim-easymotion'
" \s {char}
map <Leader> <Plug>(easymotion-prefix)

" align table
Plug 'h1mesuke/vim-alignta'
" preview Markdown
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'

" setting fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" template
Plug 'ritarock/vim-template'

call plug#end()

"""""""""""""""""""""
" base configuration
"""""""""""""""""""""
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
if has('vim_starting')
  syntax enable
  set background=dark
  set t_Co=256
  autocmd Colorscheme * highlight Visual ctermbg=222
  if &t_Co < 256
    colorscheme default
  else
    try
      colorscheme molokai
    catch
      colorscheme desert
    endtry
  endif
endif
" comment color
highlight Comment ctermfg=green

" golang auto write
augroup go
autocmd!
autocmd FileType go setlocal autowrite
augroup END


"""""""""""""""""""""
" tab, indent configuration
"""""""""""""""""""""
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

" change indent when python
augroup python
autocmd!
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
augroup END

" Highlight err when golang
autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/

"""""""""""""""""""""
" search configuration
"""""""""""""""""""""
" search as you type
set incsearch
" case insensitive
set ignorecase
" lets you search for ALL CAPS
set smartcase
" hilight searching
set hlsearch

"""""""""""""""""""""
" status line configuration
"""""""""""""""""""""
" always show the status bar
set laststatus=2
" show mode
set showmode
" show row/col and percentage
set ruler
" command line's height is 2
set cmdheight=2

"""""""""""""""""""""
" keymapping configuration
"""""""""""""""""""""
nmap j gj
nmap k gk
nmap <S-h> ^
nmap <S-l> $

" mistype and want ignored
nmap Q <silent>
nmap q: <silent>
nmap K <silent>

nnoremap x "_x
nnoremap s "_s
nnoremap Y y$

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
" current directory path
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/':'%%'

command! -nargs=? Jq call s:Jq(<f-args>)
function! s:Jq(...)
    if 0 == a:0
        let l:arg = "."
    else
        let l:arg = a:1
    endif
    execute "%! jq \"" . l:arg . "\""
endfunction

" my command
imap <C-f> World
imap <C-b><C-f> Hello

command! -nargs=1 Sample call s:sample()
function! s:sample()
  echo 'sample'
endfunction
