local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Core
Plug 'chrisbra/vim-diff-enhanced'

-- GIT
Plug 'tpope/vim-fugitive'
Plug 'f-person/git-blame.nvim'

vim.call('plug#end')
