return {
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function ()
            vim.cmd([[colorscheme gruvbox-material]])
        end,
    },

    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",

    {
        'akinsho/bufferline.nvim',
        version = '*',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
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

    "scrooloose/nerdtree",
    "unblevable/quick-scope",

    {
        'kevinhwang91/nvim-ufo',
        dependencies = { 'kevinhwang91/promise-async' }
    },

    "scrooloose/nerdcommenter",

    "kylechui/nvim-surround",

    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },

    'neovim/nvim-lspconfig',

    {
        'ms-jpq/coq_nvim',
        branch = 'coq',
    },
}
