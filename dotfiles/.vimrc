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
set modelines=0
set nomodeline

set nowrap
set nonumber
set bs=2

set diffopt+=vertical,iwhiteall,closeoff

set fo=croq
inoremap # X#

let mapleader = ","

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
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
" Always show airline bar
set laststatus=2

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_completion_enabled = 0
let g:ale_fix_on_save = 1
"set omnifunc=ale#completion#OmniFunc

" disable vim-fireplace's keymappings, I want to use ALE+LSP for code
" navigation
let g:fireplace_no_maps = 1
