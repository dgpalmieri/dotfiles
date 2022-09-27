return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'ellisonleao/gruvbox.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'

    use 'airblade/vim-gitgutter'

    use 'tpope/vim-fugitive'

    use 'sheerun/vim-polyglot'

    use 'scrooloose/nerdtree'
    use 'unblevable/quick-scope'

    use 'scrooloose/nerdcommenter'
    use 'kylechui/nvim-surround'

    use {'neoclide/coc.nvim', branch = 'release'}
end)
