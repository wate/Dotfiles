
" vi 互換モードで動作させない
set nocompatible

"---------------------------------------------------------------------------
" 編集に関する設定:
"
" タブの画面上での幅
set tabstop=4
" タブをスペースに展開する (noexpandtab:展開しない)
set expandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=2
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM
" 日本語整形スクリプト(by. 西岡拓洋さん)用の設定
let format_allow_over_tw = 1

" スワップファイルは使わない
set noswapfile

"---------------------------------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" 行番号を表示 (nonumber:表示しない)
set number
" カーソルが何行目の何列目に置かれているかを表示する
set ruler
" タブや改行を表示 (nolist:表示しない)
set nolist
" どの文字でタブや改行を表示するかを設定(表示しないように)
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
"set listchars=eol:¬,tab:»\ ,space:·,trail:~,extends:<
" listcharsの文字色
highlight SpecialKey guifg=#606060
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

" コマンドラインの高さ
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルバーの表示を消す
set notitle

" シンタックスハイライトを有効にする
syntax on
" 検索語句のハイライト
set hlsearch


if filereadable(expand('~/.vim/dein.vim'))
  source ~/.vim/dein.vim
endif
