" LOAD PATHOGEN ADD ON MANAGER
" To add a plugin from git run the following code:
" cd ~/.vim
" $ git submodule add git@source/pluginname.git bundle/pluginname

execute pathogen#infect()

" STANDARD SETTINGS
filetype on
syntax on
"set t_Co=16
"let g:solarized_termcolors=256
colorscheme solarized
set background=dark
"set background=light
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
set smartindent

" FOR BETTER SEARCH
set incsearch
set hlsearch

" THIS IS FOR REMEMBERING THE CURSOR POSITION WHEN REOPENING A FILE
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" TO PREVENT JEDI-VIM FROM OPENING DOCSTRING WITH AUTOCOMPLETE IN PYTHON FILES
autocmd FileType python setlocal completeopt-=preview

" NOT IN USE
"set lines=35 columns=150

" custom text-object for numerical values
function! Numbers()
    call search('\d\([^0-9\.]\|$\)', 'cW')
    normal v
    call search('\(^\|[^0-9\.]\d\)', 'becW')
endfunction
xnoremap in :<C-u>call Numbers()<CR>
onoremap in :normal vin<CR>
