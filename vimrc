" LOAD PATHOGEN ADD ON MANAGER
" To add a plugin from git run the following code:
" cd ~/.vim
" $ git submodule add git@source/pluginname.git bundle/pluginname

execute pathogen#infect()

" STANDARD SETTINGS
filetype on
syntax on

" set background depending on color scheme env var
let color_scheme_var=$ITERM_PROFILE
if color_scheme_var == 'Dark'
    set background=dark
endif
if color_scheme_var == 'Light'
    set background=light
endif

colorscheme solarized
set number
set cursorline 
set laststatus=2
let g:lightline = {
    \ 'colorscheme' : 'solarized'
    \ }
set colorcolumn=80
"set ruler

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
" set smartindent

" FOR BETTER SEARCH
set incsearch
set hlsearch

" THIS IS FOR REMEMBERING THE CURSOR POSITION WHEN REOPENING A FILE
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" NOT IN USE
"set lines=35 columns=150
