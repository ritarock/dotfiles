set virtualedit=onemore
"自動インデントをオフ
set nosmartindent
set t_Co=256
"前の行のインデントを引き継ぐ
set autoindent
"対応する括弧に飛ぶ
set showmatch
"不可視文字を表示
set list
set listchars=tab:>-,extends:<,trail:-,eol:<
"ステータスの表示
set laststatus=2
"タブの動く幅
set softtabstop=4
"自動インデントでずれる幅
set shiftwidth=4
"undofileを作らない
set noundofile
"swapfileを作らない
set noswapfile
"backupを作らない
set nobackup
"行を強調
set cursorline
"列を強調
set cursorcolumn
syntax on
highlight LineNr ctermfg=darkyellow
