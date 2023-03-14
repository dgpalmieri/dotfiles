return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'sainnhe/gruvbox-material'

    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'

    use 'airblade/vim-gitgutter'

    use 'tpope/vim-fugitive'

    use 'sheerun/vim-polyglot'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    use 'scrooloose/nerdtree'
    use 'unblevable/quick-scope'
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    use 'scrooloose/nerdcommenter'

    use 'kylechui/nvim-surround'

    use {'neoclide/coc.nvim', branch = 'release', run = 'yarn install --frozen-lockfile'}
end)
