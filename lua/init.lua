local packer = require 'packer'
local use = packer.use

packer.init{
    -- Custom Settings
}

packer.reset()

packer.startup(function()

    use 'wbthomason/packer.nvim'

    -- Linters & Fixers
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- LSP, Completions & Snippets
    use {
        'neovim/nvim-lspconfig',
        requires = {
            {'ms-jpq/coq_nvim', branch = 'coq'},
        },
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use 'lewis6991/impatient.nvim'
end)

-- Load configurations
local init = function ()
    require("_lsp/_all")
end

init() --> Load configs
