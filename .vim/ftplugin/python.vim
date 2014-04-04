"シンタックス有効
syntax on

"言語の構文に合わせた設定
filetype plugin indent on

"Tabをスペースに置き換え
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"行末スペースを除去
autocmd BufwritePre * :%s/\s\+$//ge

"行折返し80文字
setlocal textwidth=80
