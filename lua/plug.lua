local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Core
Plug 'chrisbra/vim-diff-enhanced'

-- Navigation
Plug('mg979/vim-visual-multi', {branch = 'master'})
Plug 'MattesGroeger/vim-bookmarks'
Plug 'psliwka/vim-smoothie'
Plug 'unblevable/quick-scope'
--Plug 'airblade/vim-rooter'

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
-- Plug 'preservim/vim-markdown'

-- Git
Plug 'tpope/vim-fugitive'
--Plug 'f-person/git-blame.nvim'

-- ETC
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'jiangmiao/auto-pairs'

vim.call('plug#end')
