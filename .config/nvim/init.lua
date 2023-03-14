require('plugins')
require('options')
require('keymaps')

local colorscheme = "gruvbox-material"

require('lualine').setup({
    options = {
        theme = colorscheme
    }
})

vim.cmd('colorscheme ' .. colorscheme)

require("nvim-surround").setup({})
