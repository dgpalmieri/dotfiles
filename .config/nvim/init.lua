-- leader needs to be set *before* lazy
vim.g.mapleader = ' '

-- set up lazy.nvim

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

-- end lazy.nvim setup

require('lualine').setup({
    options = {
        theme = "gruvbox-material"
    }
})

require('bufferline').setup{
    options = {
        mode = "tabs",
        themeable = true,
        diagnostics = "coc",
        buffer_close_icon = "",
        separator_style = "slant",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local icon = level:match("error") and " " or " "
          return " " .. icon .. count
        end
    }
}

require("nvim-surround").setup({})

require('options')
require('keymaps')
