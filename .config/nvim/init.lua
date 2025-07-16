-- leader needs to be set *before* lazy
vim.g.mapleader = ' '

vim.g.coq_settings = { auto_start = true }

vim.g.python_host_prog = '/home/dgpalmieri/mambaforge/bin/python3'
vim.g.python3_host_prog = '/home/dgpalmieri/mambaforge/bin/python3'

-- set up lazy.nvim --

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  defaults = {
      version = "*",
  },
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "gruvbox-material" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- end lazy.nvim setup --

require('options')
require('keymaps')
require('lsp')
