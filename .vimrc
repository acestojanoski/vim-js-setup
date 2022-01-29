set nocompatible

" Register plugins
call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'

call plug#end()

" Vim configuration
set number
set tabstop=4
set shiftwidth=4
set expandtab

" Ale configuration
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1

" NERDTree configuration
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1

"Airline configuration
let g:airline_theme='gruvbox'

" Theme
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast='hard'
