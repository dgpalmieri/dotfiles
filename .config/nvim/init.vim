set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

call plug#begin('~/.config/nvim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set noshowmode
Plug 'airblade/vim-gitgutter'
set updatetime=100
Plug 'tpope/vim-fugitive'
set encoding=utf-8
Plug 'sheerun/vim-polyglot'

Plug 'scrooloose/nerdtree'
Plug 'unblevable/quick-scope'

Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

" Remap leader to space
let mapleader=' '

" leader+p deletes visual selection and replaces it with yanked text, without
" overwriting register 0
xnoremap <leader>p "_dP

" Remap <esc> to jk
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
set colorcolumn=60,80,100,120
set textwidth=80

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set expandtab

set splitright
set splitbelow

set scrolloff=5
set sidescrolloff=5

set inccommand=nosplit

set ignorecase
set smartcase
