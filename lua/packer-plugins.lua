return require('packer').startup(function()
	-- Core
	use 'wbthomason/packer.nvim'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use {
		'zegervdv/nrpattern.nvim',
		config = function()
			-- Basic setup
			-- See below for more options
			require"nrpattern".setup()
		end,
	}

	--add plenary nvim here

	use 'neovim/nvim-lspconfig'

	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	
	use { "catppuccin/nvim", as = "catppuccin" }
end)
