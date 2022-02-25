set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

"These are the different plugins that I have installed

call plug#begin('~/.config/nvim/plugged')
"colorscheme
Plug 'altercation/vim-colors-solarized'

"statusline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
set noshowmode

"a great plugin that lets you change/add/delete/etc characters that surround
"another set of characters
Plug 'tpope/vim-surround'

"I don't use this one specifically, but having it allows me to see the status
"of my git repo in the statusline
Plug 'tpope/vim-fugitive'
set encoding=utf-8

"This primarily gives me a `tree`-like file navigation in my neovim window
Plug 'scrooloose/nerdtree'

"Provides an easy way to comment one or more lines of code
Plug 'scrooloose/nerdcommenter'

"This provides syntax highlighting for a lot of languages
Plug 'sheerun/vim-polyglot'

"This is a framework that allows you to install plugins that do things like
"code completions, suggestions, etc.
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"This provides a nice graphical interface in the gutter that conveys a
"per-line git status
Plug 'airblade/vim-gitgutter'
set updatetime=100

call plug#end()

"These are various config settings that make my neovim nice
"You can learn more about them with :h <option>

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
set tabstop=4
set shiftwidth=4
set expandtab

set splitright
set splitbelow

set scrolloff=5
set sidescrolloff=5

highlight Normal ctermbg=none
highlight NonText ctermbg=none
