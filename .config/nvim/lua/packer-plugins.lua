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

end)
