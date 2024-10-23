-- leader needs to be set *before* lazy
vim.g.mapleader = ' '

vim.g.coq_settings = { auto_start = true }

vim.g.python_host_prog = '/home/dgpalmieri/mambaforge/bin/python3'
vim.g.python3_host_prog = '/home/dgpalmieri/mambaforge/bin/python3'

-- set up lazy.nvim --

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup('plugins')

-- end lazy.nvim setup --

require('options')
require('keymaps')
require('lsp')
