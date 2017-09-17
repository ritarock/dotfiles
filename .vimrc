" タブ・インデントの設定                                                                                                                                    
" ファイル読み込み時の文字コード
set encoding=utf-8
" 保存時の文字コード
set fileencoding=utf-8
" タブ入力を複数の空白入力に置き換える
set expandtab
" タブ文字の幅
set tabstop=4
" 連続空白に対してタブやバックスペースでカーソルがが動く幅
set softtabstop=4
" 開業前のインデントを維持する
set autoindent
" 開業前の構文をチェックし次の行のインデントを増減する
set smartindent
" smartindentで増減する幅
set shiftwidth=4

" 文字列検索の設定
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

" カーソルの設定
" カーソルの左右移動で行末から次の行頭へ移動が可能になる
set whichwrap =b,s,h,l,<,>,[,],~
" 行番号の表示
set number
" カーソルラインをハイライト
set cursorline

" 括弧・タグジャンプの設定
" 括弧の対応関係の表示
set showmatch
" ノーマルモード時に「%」で対応する括弧にジャンプ

" コマンド補完
" コマンドモードの補完
set wildmenu
" 保存するコマンド履歴の数
set history=3000
