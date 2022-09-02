-- Options
require("nvim-tree").setup({
  show = {
    file = false,
    folder = false,
    folder_arrow = false,
    git = false,
  },
  git = {
    enable = false,
    ignore = false,
    timeout = 400,
  },
  view = {
    width = 50
  },
})

-- Remaps
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile <cr>', { noremap = true })
