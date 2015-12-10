execute pathogen#infect()
syntax on
filetype plugin on


" Tab handling
set softtabstop=2
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent

set nowrap
set nonumber
set bs=2

set fo=croq
inoremap # X#

"set wmh=0
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_

set tags=./TAGS;/
set autochdir

" Colours
set nohls
"set background=light
"highlight comment ctermfg=blue
set background=dark
colorscheme solarized

set ruler

"set mouse=a

"enable plugins
set nocp

" vim-airline configuration
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

" Include additional files here
source ~/.vim/include/clojure.vimrc
source ~/.vim/include/circle_bindings.vimrc
