-- I'm finally using lua!
-- ...mostly
-- Packer support coming in the future!

vim.cmd([[
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath=&runtimepath
    call plug#begin('~/.config/nvim/plugged')
    Plug 'ellisonleao/gruvbox.nvim'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'airblade/vim-gitgutter'
    set updatetime=100
    Plug 'tpope/vim-fugitive'
    set encoding=utf-8
    Plug 'sheerun/vim-polyglot'
    Plug 'scrooloose/nerdtree'
    Plug 'unblevable/quick-scope'
    Plug 'scrooloose/nerdcommenter'
    Plug 'kylechui/nvim-surround'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    call plug#end()
]])

vim.opt.syntax = "enable"
vim.opt.background = "dark"

local colorscheme = "gruvbox"
require(colorscheme).setup()

require('lualine').setup {
  options = {
    theme = colorscheme
  }
}

-- I can't believe there isn't a better way to do this
vim.cmd([[colorscheme gruvbox]])

vim.cmd([[autocmd BufWritePost *.tf !terraform fmt %]])
vim.cmd([[autocmd BufWritePost *.py !black %]])

require("nvim-surround").setup({})

vim.g.mapleader = ' '

vim.api.nvim_set_keymap('x', '<leader>p', '"_dP', { noremap = true })

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })

-- Remap tab and s-tab to interact with CoC
vim.cmd([[
    inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
    inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
]])

vim.api.nvim_set_keymap('n', '<leader>a', '<Plug>(coc-codeaction-line)', {})
vim.api.nvim_set_keymap('x', '<leader>a', '<Plug>(coc-codeaction-selected)', {})
vim.api.nvim_set_keymap('n', '<leader>ac', '<Plug>(coc-codeaction)', {})
vim.api.nvim_set_keymap('n', '<leader>qf', '<Plug>(coc-fix-current)', {})

-- highlight columns for codestyle
vim.opt.colorcolumn = "80,100"
vim.opt.textwidth = 88

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 15
vim.opt.sidescrolloff = 15

vim.opt.inccommand = "nosplit"

vim.opt.ignorecase = true
vim.opt.smartcase = true
