api = vim.api
bufferline = require('bufferline')

bufferline.setup({})

api.nvim_set_keymap('n', '<c-t>', ':BufferLinePick<cr>', { noremap = true })
