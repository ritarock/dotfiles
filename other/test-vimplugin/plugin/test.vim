scriptencoding utf-8

" 読み込み制御用の変数がすでに存在していたら、もうすでに読み込み済みと判断して終了する
if exists('g:loaded_hellobeautifulworld')
    finish
endif
let g:loaded_hellobeautifulworld = 1

" ユーザー設定を一時退避
let s:save_cpo = &cpo
set cpo&vim

" ノーマルモードでzを入力するとhelloworldを呼び出す
nmap z :call hellobeautifulworld#helloworld()<CR>

" 退避していたユーザ設定を戻す
let &cpo = s:save_cpo
unlet s:save_cpo
