require('plugins')
require('options')
require('keymaps')

local colorscheme = "gruvbox"
require(colorscheme).setup()
require('lualine').setup {
    options = {
        theme = colorscheme
    }
}

vim.cmd('colorscheme gruvbox')

require("nvim-surround").setup({})
