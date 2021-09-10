local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
    package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
    local use = use

    use 'wbthomason/packer.nvim'
    use 'lewis6991/impatient.nvim'

    -- Linters & Fixers
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- LSP, Completions & Snippets
    use 'neovim/nvim-lspconfig'
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            "hrsh7th/cmp-buffer",
        }
    }
end
)

-- Load configurations
local init = function ()
    require("_plugins-config/_cmp")
end
init() --> Load configs
