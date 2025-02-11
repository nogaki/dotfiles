" 行番号を表示する
set number
" カーソルの行を目立つ
set cursorline
" ペア括弧やを表示する
set showmatch

set showcmd

"""""""""""""""""""""
" 配色
"""""""""""""""""""""
" 構文毎に文字色を変化させる
syntax on
" カラースキーマの指定
colorscheme desert
" 行番号の色
highlight LineNr ctermfg=darkyellow

"""""""""""""""""""""
" タブ&インデント
"""""""""""""""""""""
" タブの代わりに空白文字を挿入する
set expandtab
" タブ文字の表示幅
set tabstop=2
" Vimが挿入するインデントの幅
set shiftwidth=2
" 行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする
set smarttab
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" 閉じた箇所で開き直す
if has("autocmd")
augroup redhat
" In text files, always limit the width of text to 78 characters
autocmd BufRead *.txt set tw=78
" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal! g'\"" |
\ endif
augroup END
endif

" ヤンクできる行数をふやす
set viminfo='20,\"10000


set maxmempattern=10000

" vim-plug
call plug#begin()
  " julia-vim
  Plug 'JuliaEditorSupport/julia-vim'
call plug#end()
