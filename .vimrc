"""""""""""""""""""""
" vimrc configuration
"""""""""""""""""""""
" install vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" ===== {{{ plugin configuration
call plug#begin('~/.vim/plugged')
" { Base
" customize status/tab line
Plug 'vim-airline/vim-airline'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#default#layout = [['a', 'c'], ['x', 'y', 'z']]

" auto insert braces/parens/etc
Plug 'cohama/lexima.vim'

" help in Japanese
Plug 'vim-jp/vimdoc-ja'
set helplang=ja,en

" colorscheme
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula'  }
" }

" { Language
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
\  'py=python',
\  'ruby',
\  'rb=ruby',
\  'sql',
\  'yaml'
\]
" use Markdown
vnoremap <Leader>mdu ygvs[](<c-r>")<ESC>?[]<cr>a

" Golang plugin
Plug 'fatih/vim-go'

" highlight csv
Plug 'mechatroner/rainbow_csv'

" html close tag
Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html'

" hilight slim
Plug 'slim-template/vim-slim'

" }

" { Tools
" show tree
Plug 'scrooloose/nerdtree'
" show dotfiles
let NERDTreeShowHidden = 1
nmap \e :NERDTreeToggle<CR>

" easy commentout
Plug 'tomtom/tcomment_vim'

" git configuration
Plug 'tpope/vim-fugitive'
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

" lsp
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
" }

call plug#end()
" ===== }}}

" ===== {{{ base configuration
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
try
  colorscheme dracula
catch
  colorscheme desert
endtry

" popup menu color
" hi Pmenu ctermbg=8
" hi PmenuSel ctermbg=1
" hi PmenuSbar ctermbg=0
" set pumheight=10

if executable('gopls')
  augroup LspGo
    au!
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'go-lang',
        \ 'cmd': {server_info->['gopls']},
        \ 'whitelist': ['go'],
        \ })
    autocmd FileType go setlocal omnifunc=lsp#complete
    autocmd FileType go nmap <buffer> gd <plug>(lsp-definition)
    autocmd FileType go nmap <buffer> ,n <plug>(lsp-next-error)
    autocmd FileType go nmap <buffer> ,p <plug>(lsp-previous-error)
  augroup END
endif

let g:go_fmt_command = 'goimports'
let g:go_def_mode = 'godef'
let g:go#use_vimproc = 0
"let g:go_snippet_engine = "minisnip"
let g:go_def_mapping_enabled = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_term_enabled = 1
let g:go_highlight_build_constraints = 1
let g:go_template_autocreate = 0
let g:go_gocode_unimported_packages = 1
let g:sonictemplate_enable_pattern = 1

" when write python
if executable('pyls')
  " pip install python-language-server
  augroup LspPython
    au!
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
    autocmd FileType python setlocal omnifunc=lsp#complete
  augroup END
endif

" when write ruby
call lexima#add_rule({
\   "at" : '\S\%#',
\   "char" : '.',
\   "input" : '.<C-x><C-o><C-p>',
\   "filetype" : "ruby"
\})

" not beep
set visualbell

" disable preview window
set completeopt-=preview
" ===== }}}

" ===== {{{ tab, indent configuration
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

" change indent when typescript
autocmd Filetype typescript setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" change indent when javascript
autocmd Filetype javascript setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" change indent when python
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Highlight err when golang
autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/
" ===== }}}

" ===== {{{ search configuration
" search when type
set incsearch
" case insensitive
set ignorecase
" search for ALL CAPS
set smartcase
" hilight searching
set hlsearch
" ===== }}}

" ===== {{{ status line configuration
" always show the status bar
set laststatus=2
" show mode
set showmode
" show row/col and percentage
set ruler
" command line's height is 2
set cmdheight=2
" ===== }}}

" ===== {{{ keymapping configuration
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
" ===== }}}

" ===== {{{ my command
command! -nargs=1 Vdiff call s:vdiff(<f-args>)
function! s:vdiff(...)
  execute "vertical diffsplit" .a:1
endfunction
" ===== }}}
