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

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'derekwyatt/vim-scala'

" solarized
NeoBundle 'altercation/vim-colors-solarized'

" Add or remove your Bundles here:
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'ctrlpvim/ctrlp.vim'
"NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" カラースキーマ
"=============
"colorscheme elflord
"コメントは灰色に
"hi Comment ctermfg=darkgrey
colorscheme solarized

