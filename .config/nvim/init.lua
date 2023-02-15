require('plugins')
require('options')
require('keymaps')

local colorscheme = "gruvbox"
require(colorscheme).setup({
    italic = false,
})
require('lualine').setup({
    options = {
        theme = colorscheme
    }
})

vim.cmd('colorscheme ' .. colorscheme)

require("nvim-surround").setup({})
