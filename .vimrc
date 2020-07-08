syntax on

set number

call plug#begin('~/.vim/plugged')

" Plug 'ayu-theme/ayu-vim' " theme color
" Plug 'morhetz/gruvbox'

Plug 'editorconfig/editorconfig-vim' " editorconfig

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'dense-analysis/ale'

Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': 'GoUpdateBinaries' }
Plug 'leafgarland/typescript-vim'

Plug 'sheerun/vim-polyglot'
Plug 'patstockwell/vim-monokai-tasty'

call plug#end()

" set termguicolors     " enable true colors support

" let ayucolor="light"  " for light version of theme
" let ayucolor="mirage" " for mirage version of theme
" let ayucolor="dark"   " for dark version of theme

" colorscheme gruvbox

" colorscheme ayu
" set background=dark
" colorscheme brogrammer.16
colorscheme vim-monokai-tasty

set path+=src/*
set includeexpr=substitute(v:fname,'@','src','g')
set isfname+=@-@
set suffixesadd+=.js,.jsx,.es,.vue
set omnifunc=ale#completion#OmniFunc
set ruler
set showmode
set showcmd
set encoding=utf-8

let g:ale_completion_enabled = 1
