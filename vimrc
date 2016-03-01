" LOAD PATHOGEN ADD ON MANAGER
" To add a plugin frim git run the following code:
" cd ~/.vim
" $ git submodule add git@source/pluginname.git bundle/pluginname

execute pathogen#infect()

" STANDARD SETTINGS
filetype on
syntax on
set background=dark
colorscheme solarized
set number
set cursorline 

" SMART DEFAULTS
set nocompatible
set hidden
set history=100

" FOR INDENTATION
filetype indent on
set nowrap
set autoindent
set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

" FOR BETTER SEARCH
set incsearch
set hlsearch

"set lines=35 columns=150
"set colorcolumn=120


if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
