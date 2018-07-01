" ====================================================
" PLUGIN AND SETTING
" ====================================================
" Install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

" Show tree
Plug 'scrooloose/nerdtree'
" Show dotfiles
let NERDTreeShowHidden = 1

" Causes all trailing whitespace to be highlighted in red
Plug 'bronson/vim-trailing-whitespace'

"  status/tabline
Plug 'vim-airline/vim-airline'

" Easy commentout (ctl + --)
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
" set splitright
" let g:quickrun_config={'*': {'vsplit': ''}}

" HELP in Japanese
Plug 'vim-jp/vimdoc-ja'
set helplang=ja,en

" Resize window
Plug 'simeji/winresizer'
" Press keys Ctrl + E
" The change width of window size when left or right key is pressed
let g:winresizer_vert_resize = 1
" The change height of window size when down or up key is pressed
let g:winresizer_horiz_resize = 1

" colorscheme
Plug 'tomasr/molokai'

" Syntax typescript
Plug 'leafgarland/typescript-vim'

" automatically close pairs such as (), {}, ...
Plug 'cohama/lexima.vim'

" Easy move
Plug 'easymotion/vim-easymotion'

" Setting Markdown
" Syntax Markdwon
Plug 'tpope/vim-markdown'
let g:markdown_fenced_languages = [
\  'css',
\  'javascript',
\  'js=javascript',
\  'json=javascript',
\  'ruby',
\  'python',
\]
" align table
Plug 'h1mesuke/vim-alignta'
" preview
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'

" Setting Language Server
" Plug 'natebosch/vim-lsc'
" let g:lsc_server_commands = {
" \  'python': 'pyls',
" \  'typescript': 'typescript-language-server --stdio',
" \}

call plug#end()

" ====================================================
" BASE SETTING
" ====================================================
" UTF-8 by default
set encoding=utf-8
" Remove splash screen
"set shortmess+=I
" Enable line change with right or left cursor move
set whichwrap =b,s,h,l,<,>,[,],~
" Show line number
set number
" Show cursor line
set cursorline
" Don't make swapfile
set noswapfile
" Don't make undofile
set noundofile
" Enable backspace
set backspace=indent,eol,start
" Show command
set showcmd
"colorscheme
"colorscheme desert
colorscheme molokai
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
" Show whitespace as special chars - see listchars
set list
" Unicode characters for various things
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
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
nmap \e :NERDTreeToggle<CR>
" \s {char}
map <Leader> <Plug>(easymotion-prefix)
inoremap <silent> jj <ESC>
nnoremap <silent><Esc><Esc> : <C-u>set nohlsearch!<CR>
nnoremap ; :
" Highlight the word under the cursor in normal mode with 2 spaces
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
nnoremap x "_x
nnoremap s "_s
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
" Use Markdown
vnoremap <Leader>mdu ygvs[](<c-r>")<ESC>?[]<cr>a

" ====================================================
" MY COMMAND
" ====================================================
command! -nargs=1 Template call Template(<f-args>)
function! Template(argft)
  if a:argft == "python"
    set filetype=python
    call setline(1,"def main():")
    call setline(2,"")
    call setline(3,"if __name__ == '__main__':")
    call setline(4,"    main()")
  elseif a:argft == "sh"
    set filetype=sh
    call setline(1,"#!/bin/sh")
  elseif a:argft == "html"
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
  elseif a:argft == "Dockerfile"
    call setline(1, "FROM <image>")
    call setline(2, "MAINTAINER <name>")
    call setline(3, "RUN <command>")
    call setline(4, "ADD <src>")
    call setline(5, "COPY <src>")
    call setline(6, "USER <name>")
    call setline(7, "WORKDIR /path/to/workdir")
    call setline(8, "ENV <key> <value>")
  elseif a:argft == "markdown"
    set filetype=markdown
    call setline(1, "# Header1")
    call setline(2, "###### Header6")
    call setline(3, "Paragraphs and <space><space>")
    call setline(4, "Breaks")
    call setline(5, "* List1")
    call setline(6, "   * List1-1")
    call setline(7, "- [ ] list1")
    call setline(8, "- [x] list2")
    call setline(9, "Horizontal Rules")
    call setline(10, "----")
    call setline(11, "[Title](URL)  ")
    call setline(12, "*Emphasis1*")
    call setline(13, "**Emphasis2**")
    call setline(14, "***Emphasis3***")
    call setline(15, "~~Strikethrough~~")
    call setline(15, "```Code.md")
    call setline(16, "  This is code")
    call setline(17, "```")
    call setline(18, "| Left align | Right align | Center align |")
    call setline(19, "|:-----------|------------:|:------------:|")
    call setline(20, "|text        |text         |text          |")
  else
    echo "Not Applicable"
  endif
endfunction

command! -nargs=1 DebugLog call DebugLog(<f-args>)
function! DebugLog(charg)
  let ft = &filetype
  if ft == "python"
    let message = "print(" . a:charg . ")"
    call append(line("."),message)
  elseif ft == "javascript"
    let message = "console.log(" . a:charg . ");"
    call append(line("."),message)
  elseif ft == "typescript"
    let message = "console.log(" . a:charg . ");"
    call append(line("."),message)
  else
    echo "Not Applicable"
  endif
endfunction

imap <C-f> World
imap <C-b><C-f> Hello
