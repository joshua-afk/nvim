map = vim.api.nvim_set_keymap

require'sniprun'.setup({
    display = {"Classic"},
})

map('v', '<leader>sr', ':SnipRun<CR>', { noremap = true })
