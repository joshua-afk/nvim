return require('packer').startup(function()
  -- Packer
	use 'wbthomason/packer.nvim'

	-- Core
	use {
		'zegervdv/nrpattern.nvim',
		config = function()
			require"nrpattern".setup()
		end,
	}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Navigation
  use {
    'notjedi/nvim-rooter.lua',
    config = function() require'nvim-rooter'.setup() end
  }
	
	-- Etc
	use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- Snippets
	use 'L3MON4D3/LuaSnip'
	use 'neovim/nvim-lspconfig'

	-- Theme
	use { "catppuccin/nvim", as = "catppuccin" }

  -- File Explorer
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
