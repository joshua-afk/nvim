return require('packer').startup(function()
  -- Packer
	use 'wbthomason/packer.nvim'

	-- Core
	use 'zegervdv/nrpattern.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'xorid/swap-split.nvim'
  use { 'michaelb/sniprun', run = 'bash ./install.sh'}
	use 'numToStr/Comment.nvim'

  -- Navigation
  use 'notjedi/nvim-rooter.lua'
  use {'akinsho/bufferline.nvim', tag = "v3.*"}
	
  -- Snippets
	use 'neovim/nvim-lspconfig'
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})

	-- Theme
	use { "catppuccin/nvim", as = "catppuccin" }
  use "folke/styler.nvim"

  -- File Explorer
	use { 'kyazdani42/nvim-tree.lua',
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Extension for plugins
	use 'saadparwaiz1/cmp_luasnip'
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use {
    "benfowler/telescope-luasnip.nvim",
    module = "telescope._extensions.luasnip"
  }
end)
