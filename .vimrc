"
"    __   __ ( )  _ __ ___    _ _    ___
"    \ \ / / | | | '_ ` _ \  | '_|  / __|
"     \ V /  | | | | | | | | | |   | (__
"  ( ) \_/   |_| |_| |_| |_| |_|    \___|
"
" rita's .vimrc

" Install vim-plug {{{====================
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" }}}

" Setting vim-plug {{{====================
call plug#begin('~/.vim/plugged')

" Show tree {{{
Plug 'scrooloose/nerdtree'
" Show dotfiles
let NERDTreeShowHidden = 1
nmap \e :NERDTreeToggle<CR>
" }}}

" Customize status/tab line {{{
Plug 'itchyny/lightline.vim'
" Show file path
let g:lightline = {
      \'active': {
      \ 'left': [ ['mode', 'paste'],
      \         ['readonly', 'filepath', 'modified'] ]
      \},
      \'component_function': {
      \'filepath': 'FilePath'
      \},
      \}
function! FilePath()
  if winwidth(0) > 90
    return expand("%:s")
  else
    return expand("%:t")
  endif
endfunction
" }}}

" Easy commentout {{{
" Usage ctl + --
Plug 'tomtom/tcomment_vim'
" }}}

" Auto insert braces/parens/etc {{{
Plug 'Townk/vim-autoclose'
" }}}

" Syntax highlight ES6 {{{
Plug 'othree/yajs.vim'
" }}}

" HTML5 + inline SVG omnicomplete function, indent and syntax {{{
Plug 'othree/html5.vim'
" }}}


" Git config {{{
Plug 'airblade/vim-gitgutter'
" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'
nmap ]g :GitGutterNextHunk<CR>
nmap [g :GitGutterPrevHunk<CR>
" }}}

" Run commands quickly {{{
Plug 'thinca/vim-quickrun'
" Split right
" set splitright
" let g:quickrun_config={'*': {'vsplit': ''}}
" }}}

" HELP in Japanese {{{
Plug 'vim-jp/vimdoc-ja'
set helplang=ja,en
" }}}

" Resize window {{{
Plug 'simeji/winresizer'
" Usage ctl + e
" The change width of window size when left or right key is pressed
let g:winresizer_vert_resize = 1
" The change height of window size when down or up key is pressed
let g:winresizer_horiz_resize = 1
" }}}

" Colorscheme {{{
Plug 'tomasr/molokai'
" }}}

" Syntax typescript {{{
Plug 'leafgarland/typescript-vim'
" }}}

" Automatically close pairs such as (), {}, ... {{{
Plug 'cohama/lexima.vim'
" }}}

" Easy move {{{
Plug 'easymotion/vim-easymotion'
" \s {char}
map <Leader> <Plug>(easymotion-prefix)
" }}}

" Setting Markdown {{{
Plug 'tpope/vim-markdown'
" Syntax Markdwon
let g:markdown_fenced_languages = [
\  'html',
\  'css',
\  'javascript',
\  'js=javascript',
\  'json=javascript',
\  'ruby',
\  'python',
\  'bash=sh',
\  'yaml',
\]
" Align table {{{
Plug 'h1mesuke/vim-alignta'
" }}}
" Preview {{{
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
" }}}
" Use Markdown
vnoremap <Leader>mdu ygvs[](<c-r>")<ESC>?[]<cr>a
" }}}

" Setting fzf {{{
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" }}}

" Golang plugin {{{
" Plug 'fatih/vim-go'
" }}}

" Setting Language Server {{{
" Plug 'natebosch/vim-lsc'
" let g:lsc_server_commands = {
" \  'python': 'pyls',
" \  'typescript': 'typescript-language-server --stdio',
" \}
" Automatically close the document window
" autocmd CompleteDone * silent! pclose
" }}}

" Delete end-space {{{
Plug 'ritarock/vim-sweep_trail'
" }}}

call plug#end()
" }}}

" Base setting {{{====================
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
" Colorscheme
" colorscheme desert
autocmd Colorscheme * highlight Visual ctermbg=222
colorscheme molokai
set t_Co=256
syntax on
" }}}

" Tab,Indent Setting {{{====================
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
augroup python
autocmd!
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
augroup END
" }}}

" Status line setting {{{====================
" Always show the status bar
set laststatus=2
" Show mode
set showmode
" Show row/col and percentage
set ruler
" Command line's height is 2
set cmdheight=2
" }}}

" Search setting {{{====================
" Search as you type
set incsearch
" Case insensitive
set ignorecase
" Lets you search for ALL CAPS
set smartcase
" Hilight searching
set hlsearch
" Get matching number
" :%s/hoge/&/gn
" }}}

" Keymap setting {{{====================
nmap j gj
nmap k gk
nmap <S-h> ^
nmap <S-l> $
" These are things that I mistype and want ignored.
nmap Q <silent>
nmap q: <silent>
nmap K <silent>
" Open(split) .vimrc
nmap <F2> :split ~/.vimrc<CR>
inoremap <silent> jj <ESC>
nnoremap <silent><Esc><Esc> : <C-u>set nohlsearch!<CR>
nnoremap ; :
" Highlight the word under the cursor in normal mode with 2 spaces
nnoremap <silent> <Space><Space> "zyiw:let @/ = '\<' . @z . '\>'<CR>:set hlsearch<CR>
nnoremap x "_x
nnoremap s "_s
nnoremap Y y$
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
vnoremap <S-h> ^
vnoremap <S-l> $
" }}}

" My command {{{====================
command! -nargs=1 Template call s:template(<f-args>)
function! s:template(argft)
  if a:argft == "python"
    set filetype=python
    call setline(1,"def main():")
    call setline(2,"     ")
    call setline(3,"if __name__ == '__main__':")
    call setline(4,"    main()")
    call cursor(2,5)
  elseif a:argft == "shell"
    set filetype=sh
    call setline(1,"#!/bin/sh")
    call setline(2,"")
    call cursor(2,1)
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
    call cursor(8,5)
  elseif a:argft == "Dockerfile"
    call setline(1, "FROM <image>")
    call setline(2, "MAINTAINER <name>")
    call setline(3, "WORKDIR /path/to/workdir")
    call setline(4, "RUN <command>")
    call setline(5, "ADD <src>")
    call setline(6, "COPY <src>")
    call setline(7, "USER <name>")
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
  elseif a:argft == "autoload"
    set filetype=vim
    call setline(1,"\" プラグインの説明")
    call setline(2,"\" Version: 1.0")
    call setline(3,"\" Author: AUTHOR NAME <AUTHOR@MAIL>")
    call setline(4,"\" License: VIM LICENSE")
    call setline(5,"")
    call setline(6,"\" 副作用の回避")
    call setline(7,"let s:save_cpo = &cpo")
    call setline(8,"set cpo&vim")
    call setline(9,"")
    call setline(10,"\" 実際の処理")
    call setline(11,"function! {plugin-name}#sample()")
    call setline(12,"\"  処理内容")
    call setline(13,"endfunction")
    call setline(14,"")
    call setline(15,"let &cpo = s:save_cpo")
    call setline(16,"unlet s:save_cpo")
  elseif a:argft == "plugin"
    set filetype=vim
    call setline(1,"\" 行末スペースを削除")
    call setline(2,"\" Version: 1.0")
    call setline(3,"\" Author: AUTHOR NAME <AUTHOR@MAIL>")
    call setline(4,"\" License: VIM LICENSE")
    call setline(5,"")
    call setline(6,"\" 多重ロード防止")
    call setline(7,"\" 慣習的にg:loaded_{plugin-name} とするのが一般的")
    call setline(8,"if exists('g:loaded_{plugin-name}')")
    call setline(9,"  finish")
    call setline(10,"endif")
    call setline(11,"let g:loaded_{plugin-name} = 1")
    call setline(12,"")
    call setline(13,"\" 副作用の回避")
    call setline(14,"let s:save_cpo = &cpo")
    call setline(15,"set cpo&vim")
    call setline(16,"")
    call setline(17,"\" 処理の呼び出し")
    call setline(18,"command! -bar Sample call {plugin-name}#sample()")
    call setline(19,"")
    call setline(20,"let &cpo = s:save_cpo")
    call setline(21,"unlet s:save_cpo")
  else
    echo "Not Applicable"
  endif
endfunction

command! -nargs=1 DebugLog call s:debugLog(<f-args>)
function! s:debugLog(charg)
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
" }}}

imap <C-f> World
imap <C-b><C-f> Hello

command! -nargs=1 Sample call s:sample()
function! s:sample()
  echo 'sample'
endfunction
