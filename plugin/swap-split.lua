api = vim.api

require("swap-split").setup({
    ignore_filetypes = {
        "NvimTree"
    }
})

api.nvim_set_keymap('n', '<leader>sw', '<cmd>SwapSplit<CR>', { noremap = true })
