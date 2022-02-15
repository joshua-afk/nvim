local packer = require('packer')
local lsp = require('lspconfig')
local use = packer.use

packer.init{
  -- Custom Settings
}

packer.reset()

packer.startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Linters & Fixers
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- LSP, Completions & Snippets
  use 'neovim/nvim-lspconfig'

  -- Trouble
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

end)

-- Configs
local init = function()
  require('_lsp/_html')
  require('_lsp/_eslint')
  require('_lsp/_tsserver')
end

init()
