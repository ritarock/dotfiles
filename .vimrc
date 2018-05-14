" ====================================================
" BASE SETTING
" ====================================================
" UTF-8 by default
set encoding=utf-8
" Remove splash screen
set shortmess+=I
" Enable line change with right or left cursor move
set whichwrap =b,s,h,l,<,>,[,],~
" Show line number
set number
" Show cursor line
set cursorline
" Don't make swapfile
set noswapfile
" Enable backspace
set backspace=indent,eol,start
" Show command
set showcmd
colorscheme desert
set t_Co=256
syntax on

" ====================================================
" TAB,INDENT SETTING
" ====================================================
" Replace space with TAB
set expandtab
" The one true Tab
set tabstop=2
" Spaces 'feel' like tabs
set softtabstop=2
" Carry over indenting from previous line
set autoindent
" Set smartindent
set smartindent
" Smartindent's space is 2
set shiftwidth=2
" Hilight matching braces/parens/etc
set showmatch
" Show possible completions on command line
set wildmenu
" How many lines of history to save
set history=200
" Change indent when python
augroup vimrc
autocmd! FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
augroup END

" ====================================================
" STATUS LINE SETTING
" ====================================================
" Always show the status bar
set laststatus=2
" Show mode
set showmode
" Show row/col and percentage
set ruler
" Command line's height is 2
set cmdheight=2

" ====================================================
" SEARCH SETTING
" ====================================================
" Search as you type
set incsearch
" Case insensitive
set ignorecase
" Lets you search for ALL CAPS
set smartcase
" Hilight searching
set hlsearch

" ====================================================
" KEYMAP SETTING
" ====================================================
nmap j gj
nmap k gk
inoremap <silent> jj <ESC>
nnoremap <silent><Esc><Esc> : <C-u>set nohlsearch!<CR>
nnoremap ; :
" Highlight the word under the cursor in normal mode with 2 spaces
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
nmap \e :NERDTreeToggle<CR>
nnoremap x "_x
nnoremap s "_s

" ====================================================
" PLUGIN
" ====================================================
" Install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

" Show tree
Plug 'scrooloose/nerdtree'
" Show dotfile
let NERDTreeShowHidden = 1

" Causes all trailing whitespace to be highlighted in red
Plug 'bronson/vim-trailing-whitespace'

" Power up status line
Plug 'itchyny/lightline.vim'
"let g:lightline = {'colorscheme': 'wombat'}

" Easy commentout (gcc)
Plug 'tomtom/tcomment_vim'

" Auto insert braces/parens/etc
Plug 'Townk/vim-autoclose'

" Syntax highlight ES6
Plug 'othree/yajs.vim'

" Git config
Plug 'airblade/vim-gitgutter'
" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

" Run commands quickly
Plug 'thinca/vim-quickrun'
" Split right
set splitright
let g:quickrun_config={'*': {'vsplit': ''}}

" HELP in Japanese
Plug 'vim-jp/vimdoc-ja'
set helplang=ja,en

call plug#end()

" ====================================================
" MY COMMAND
" ====================================================
command! -nargs=0 TemplatePy call TemplatePy()
function! TemplatePy()
  set filetype=python
  call setline(1,"def main():")
  call setline(2,"")
  call setline(3,"if __name__ == '__main__':")
  call setline(4,"    main()")
endfunction

command! -nargs=0 TemplateHtml call TemplateHtml()
function! TemplateHtml()
  set filetype=html
  call setline(1,"<!DOCTYPE html>")
  call setline(2,"<html>")
  call setline(3,"  <head>")
  call setline(4,"    <meta charset=\"utf-8\">")
  call setline(5,"    <title>TITLE</title>")
  call setline(6,"  </head>")
  call setline(7,"  <body>")
  call setline(8,"    <!-- BODY -->")
  call setline(9,"  </body>")
  call setline(10,"</html>")
endfunction

command! -nargs=0 TemplateSh call TemplateSh()
function! TemplateSh()
  set filetype=sh
  call setline(1,"#!/bin/sh")
endfunction

command! -nargs=0 DebugLog call Debuglog()
function! Debuglog()
  let ft = &filetype
  if ft == "python"
    call append(line("."),"print('')")
  elseif ft == "javascript"
    call append(line("."),"console.log('');")
  else
    echo "processing"
  endif
endfunction

