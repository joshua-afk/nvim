local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Core
Plug 'chrisbra/vim-diff-enhanced'

-- Navigation
Plug('mg979/vim-visual-multi', {branch = 'master'})
Plug 'MattesGroeger/vim-bookmarks'
Plug 'psliwka/vim-smoothie'
Plug 'unblevable/quick-scope'
Plug 'airblade/vim-rooter'

-- GIT
Plug 'tpope/vim-fugitive'
--Plug 'f-person/git-blame.nvim'

vim.call('plug#end')
