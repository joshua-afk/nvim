local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn

-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

--- startup and add configure plugins
packer.startup(function()
    local use = use
    -- add you plugins here like:

    use 'wbthomason/packer.nvim'

    use 'lewis6991/impatient.nvim'

    -- Linters & Fixers
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- LSP, Completions & Snippets
    -- use {
        -- "hrsh7th/nvim-cmp",
        -- requires = {
        --     "hrsh7th/cmp-buffer"
        -- },
        -- event = 'InsertEnter *',
        -- config = [[require('_plugins-config._cmp')]]
    -- }
end)

-- Load configurations
local init = function ()
    -- require("_plugins-config/_cmp")
    require("_lsp/_all")
end
init() --> Load configs
