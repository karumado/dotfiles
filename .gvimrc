"--------------------
" 基本的な設定
"--------------------
set list
set listchars=tab:>-,trail:~,eol:$

"新しい行のインデントを現在行と同じにする
set autoindent 

"タブ表示
set showtabline=2

"透明度
set transparency=5

"アンチエイリアス
set antialias

"バックアップ無し
set nobackup

"バックアップファイルのディレクトリを指定する
"set backupdir=$HOME/vimbackup
 
"vi互換をオフする
set nocompatible
 
"スワップファイル用のディレクトリを指定する
"set directory=$HOME/vimbackup
 
"タブの代わりに空白文字を指定する
set expandtab

"タブ
set tabstop=4
set shiftwidth=4
set softtabstop=4

set fileencoding=utf-8
set fileformat=unix


"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden
 
"インクリメンタルサーチを行う
set incsearch
 
"行番号を表示する
set number
 
"閉括弧が入力された時、対応する括弧を強調する
set showmatch
 
"新しい行を作った時に高度な自動インデントを行う
set smarttab
 
" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

colorscheme desert
