call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set laststatus=2
"set statusline=%t\ %y\ format:\ %{&ff};\ [%c,%l]\ %{rvmprompt#statusline()}

set statusline=
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " filename
set statusline+=%h%m%r%w                     " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=\ %{fugitive#statusline()}     " fugitive
set statusline+=\ %{rvmprompt#statusline()}	" rvmprompt
set statusline+=%=                           " right align remainder
set statusline+=0x%-8B                       " character value
set statusline+=%-14(%l,%c%V%)               " line, character
set statusline+=%<%P                         " file position

set noequalalways
set mousefocus

set expandtab
set tabstop=4
set shiftwidth=4

filetype plugin on
syntax on

let mapleader = ","

let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

let g:gist_detect_filetype = 1

nnoremap <silent> <F8> :TagExplorer<CR> 
nnoremap <silent> <F2> :NERDTreeToggle<CR>
