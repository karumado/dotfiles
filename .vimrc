" シンタックス 有効
set syntax=on
" 行番号表示
set number
" Tabは半角スペース
set expandtab
" タブ幅は半角スペース２個分
set tabstop=2
" インデント
set cindent
set shiftwidth=2
" 検索結果ハイライト
set hlsearch

"set softtabstop=2

set imdisable

set nocompatible

colorscheme desert


" 行頭のスペースの連続をハイライトさせる
" Tab文字も区別されずにハイライトされるので、区別したいときはTab文字の表示を別に
" 設定する必要がある。
function! SOLSpaceHilight()
    syntax match SOLSpace "^\s\+" display containedin=ALL
    highlight SOLSpace term=underline ctermbg=LightGray
endf
" 全角スペースをハイライトさせる。
function! JISX0208SpaceHilight()
    syntax match JISX0208Space "　" display containedin=ALL
    highlight JISX0208Space term=underline ctermbg=LightCyan
endf
" syntaxの有無をチェックし、新規バッファと新規読み込み時にハイライトさせる
if has("syntax")
    syntax on
        augroup invisible
        autocmd! invisible
        autocmd BufNew,BufRead * call SOLSpaceHilight()
        autocmd BufNew,BufRead * call JISX0208SpaceHilight()
    augroup END
endif

" 特殊文字(SpecialKey)の見える化。listcharsはlcsでも設定可能。
" trailは行末スペース。
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<


filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/dotfiles/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/dotfiles/.vim/bundle/'))
endif

" インストールしたいプラグイン
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'

filetype plugin indent on
