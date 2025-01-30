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
        'lewis6991/gitsigns.nvim',
        config = function()
            require("gitsigns").setup{
                on_attach = function(bufnr)
                    local gitsigns = require('gitsigns')

                    local function map(mode, l, r, opts)
                        opts = opts or {}
                        opts.buffer = bufnr
                        vim.keymap.set(mode, l, r, opts)
                    end

                    map('n', '<leader>hb', function() gitsigns.blame_line{full=true} end)
                    map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
                end
            }
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        version = 'v0.9.3',
        build = ':TSUpdate'
    },

    {
        "nvim-treesitter/nvim-treesitter-context",
        -- check for merge https://github.com/nvim-treesitter/nvim-treesitter-context/pull/548
        commit="f6c99b64111ab1424c8fde3d9a6f3cd08234f8cb",
        config = function()
            require("treesitter-context").setup({
                enable=true,
                mode='topline',
            })
        end,
    },

    "unblevable/quick-scope",

    {
        'kevinhwang91/nvim-ufo',
        dependencies = { 'kevinhwang91/promise-async' }
    },


    {
        'numToStr/Comment.nvim',
        opts = {
            -- add any options here
        },
        config = function()
            require("Comment").setup({})
        end,
    },

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

    'nvim-telescope/telescope-ui-select.nvim',

    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown{}
                    }
                }
            }
        end,
    },

    {
        "aznhe21/actions-preview.nvim",
        config = function()
            require("actions-preview").setup{}
        end,
    },

    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
    },
}
