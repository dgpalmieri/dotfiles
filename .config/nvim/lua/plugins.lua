return {
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd([[ colorscheme gruvbox-material ]])
        end,
    },

    {
        "nvim-lualine/lualine.nvim",
        config = function ()
            require('lualine').setup({
                options = {
                    theme = "gruvbox-material",
                },
            })
        end,
    },

    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function ()
            require('bufferline').setup{
                options = {
                    mode = "tabs",
                    themeable = true,
                    diagnostics = "nvim_lsp",
                    buffer_close_icon = "",
                    separator_style = "slant",
                    diagnostics_indicator = function(count, level, diagnostics_dict, context)
                      local icon = level:match("error") and " " or " "
                      return " " .. icon .. count
                    end,
                }
            }
        end,
    },

    {
        'airblade/vim-gitgutter',
        branch = 'main'
    },

    "tpope/vim-fugitive",

    "sheerun/vim-polyglot",

    {
        "nvim-treesitter/nvim-treesitter",
        version = 'v0.9.1',
        build = ':TSUpdate'
    },

    "nvim-treesitter/nvim-treesitter-context",

    "unblevable/quick-scope",

    {
        'kevinhwang91/nvim-ufo',
        dependencies = { 'kevinhwang91/promise-async' }
    },

    "scrooloose/nerdcommenter",

    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({})
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {
                view = {
                    width = 35,
                },
            }
        end,
    },

    'neovim/nvim-lspconfig',

    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
    },
}
