" ファイルエンコーディング
"set fileencoding=utf-8
"set fileformat=unix

" シンタックス 有効
"set syntax=on
syntax enable
colorscheme hybrid
"colorscheme xoria256


" 行番号表示
set nu
"" タブ幅は半角スペース２個分
set backspace=2
set autoindent
set cindent
set expandtab

" ウィンドウタイトルを編集中のファイル名にする
set title

" 検索時に大文字を含んでいたら大/小を区別
set smartcase

" インクリメンタルサーチ
set incsearch

" 検索結果ハイライト
set hlsearch

" バックアップを作らない
set nobackup

"内容が変更されたら自動的に再読み込み
set autoread

"Unicodeで行末が変になる問題を解決
set ambiwidth=double

set imdisable

"vi互換をオフする
"そもそも.vimrcがあれば不要勝手にoffになる
"set nocompatible

" カーソル行をわかりやすく
set cursorline

" カーソル位置縦列
set cursorcolumn

" 不可視ファイルの表示
"set list


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


if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))
" インストールしたいプラグイン
" :NeoBundleInstallでインスコ
" :NeoBundleCleanで削除
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'

filetype plugin indent on

