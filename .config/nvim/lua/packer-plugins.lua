return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

	-- Stuff I genrally use 
	use 'preservim/nerdtree'
	use 'tpope/vim-commentary'
	use 'vim-airline/vim-airline'
	use 'ryanoasis/vim-devicons'
	use "lukas-reineke/indent-blankline.nvim"

	-- Color Schemes
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use 'gruvbox-community/gruvbox'
	use 'rafi/awesome-vim-colorschemes'

	-- For LaTeX
	use 'lervag/vimtex'

	-- Language Server
	use 'neovim/nvim-lspconfig'

	-- Autocompletion
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	-- use 'hrsh7th/cmp-vsnip'
	-- use 'hrsh7th/vim-vsnip'
        use 'SirVer/ultisnips'
        use 'quangnguyen30192/cmp-nvim-ultisnips'

	-- Some default snippets
	use 'honza/vim-snippets'
end)
