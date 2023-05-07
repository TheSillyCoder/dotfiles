return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'gruvbox-community/gruvbox'
	use 'rafi/awesome-vim-colorschemes'
	use 'neovim/nvim-lspconfig'
	use 'preservim/nerdtree'
	use 'tpope/vim-commentary'
	use 'vim-airline/vim-airline'
	use 'lervag/vimtex'
	use 'ryanoasis/vim-devicons'
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	use "lukas-reineke/indent-blankline.nvim"
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

end)
