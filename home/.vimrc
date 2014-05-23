" Vim設定
"=============
set nocompatible " vi互換モードを解除

" 表示
"=============
set number    "行番号
set ruler     "ルーラー表示
set title     "ファイル名表示
set showmode  "モードを表示
set showmatch "対応する括弧をハイライト
set tabstop=4 "TAB文字の表示幅

" タブ文字などを表示(set listコマンドで有効化する)
"set list
set listchars=tab:>\ ,trail:-,eol:$,extends:»,precedes:«,nbsp:%
" Syntax Highlight
syntax on
" ステータスライン
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

" テーマ
"=============
"colorscheme elflord
"コメントは灰色に
"hi Comment ctermfg=darkgrey

" Encoding
"=============
set encoding=utf-8 " Default encoding
set fileencoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis

" 入力
"=============
set autoindent "自動インデント
set expandtab  "TABの代わりにスペースで入力

" 検索
"=============
set ignorecase "検索の時に大文字小文字を区別しない
set smartcase  "ただし大文字小文字の両方が含まれている場合は大文字小文字を区別する
set wrapscan   "検索時にファイルの最後まで行ったら最初に戻る
set incsearch  "インクリメンタルサーチ
set hlsearch   "検索文字の強調表示

" その他
"=============
" 末尾のスペースを自動的に削除
autocmd BufWritePre * :%s/\s\+$//e
