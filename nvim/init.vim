" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

"Keyboard Mapping
nnoremap n h
nnoremap e j
nnoremap i k
nnoremap o l
nnoremap h i

vnoremap n h
vnoremap e j
vnoremap i k
vnoremap o l
vnoremap h i

" enabling spell check
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-o> :set spell!<cr>
set spelllang=en
set spellsuggest=best,9


"Basic Config
"set number
set incsearch
set hlsearch
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
"set nowrap
set smartcase 
set incsearch
"set colorcolumn=80
"set nocompatible
"set termguicolors

"syntax on
"highlight ColorColumn ctermbg=0 guibg=black

filetype plugin on
call plug#begin('~/.config/nvim/plugged')
"Plug 'ycm-core/YouCompleteMe'
Plug 'vimwiki/vimwiki'
"Plug 'Pocco81/HighStr.nvim'
"Plug 'dense-analysis/ale'
call plug#end()
