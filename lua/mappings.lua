g = vim.g
o = vim.o
api = vim.api
options = { noremap = true }

g.mapleader = " "

api.nvim_set_keymap('n', '<leader>w', ':w<cr>', options)
api.nvim_set_keymap('n', '<leader>q', ':q<cr>', options)
