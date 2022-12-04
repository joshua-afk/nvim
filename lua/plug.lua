local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- Core
Plug 'chrisbra/vim-diff-enhanced'

-- Navigation
Plug('mg979/vim-visual-multi', {branch = 'master'})
Plug 'MattesGroeger/vim-bookmarks'
Plug 'psliwka/vim-smoothie'
Plug 'unblevable/quick-scope'
Plug 'ggandor/leap.nvim'
--Plug 'airblade/vim-rooter'
Plug 'wfxr/minimap.vim'

-- Linters
-- Plug 'folke/trouble.nvim'
Plug 'mfussenegger/nvim-lint'
Plug 'digitaltoad/vim-pug'
Plug 'jwalton512/vim-blade'
Plug 'pangloss/vim-javascript'
Plug 'statico/vim-javascript-sql'
Plug 'vim-ruby/vim-ruby'
Plug 'godlygeek/tabular'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'joereynolds/sql-lint'
Plug 'vim-python/python-syntax'
Plug 'tbastos/vim-lua'
-- Plug 'preservim/vim-markdown'
Plug 'ap/vim-css-color'

-- Git
Plug 'tpope/vim-fugitive'
--Plug 'f-person/git-blame.nvim'

-- Theme
Plug 'rakr/vim-one'

-- ETC
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
vim.call('plug#end')
