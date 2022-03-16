set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

call plug#begin('~/.config/nvim/plugged')
Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set noshowmode

Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'
set encoding=utf-8

Plug 'scrooloose/nerdtree'

Plug 'scrooloose/nerdcommenter'

Plug 'sheerun/vim-polyglot'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'airblade/vim-gitgutter'
set updatetime=100

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
syntax enable
set background=dark
colorscheme solarized

" Remap <esc> to jk - highly recommended
inoremap jk <Esc>

" Remap tab and s-tab to interact with CoC
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Remaps for common coc functions
nmap <leader>a  <Plug>(coc-codeaction-line)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

" change gutter background color to make sense
highlight clear SignColumn

" highlight columns for codestyle
set colorcolumn=80,100,120

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

set splitright
set splitbelow

set scrolloff=5
set sidescrolloff=5

highlight Normal ctermbg=none
highlight NonText ctermbg=none
