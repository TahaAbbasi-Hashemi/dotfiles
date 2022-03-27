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
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
"set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=106                  " set an 80 column border for good coding style
#set mouse=a                 " enable mouse click
#set clipboard=unnamedplus   " using system clipboard
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
set smartindent
set smartcase 
set incsearch

filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
filetype plugin on

    "PLUGINS
"call plug#begin('~/.config/nvim/plugged')
"Plug 'ycm-core/YouCompleteMe'
"Plug 'vimwiki/vimwiki'
"Plug 'Pocco81/HighStr.nvim'
"Plug 'dense-analysis/ale'
"call plug#end()


