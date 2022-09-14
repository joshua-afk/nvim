-- Options
require("nvim-tree").setup({
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true
  },
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
      }
    }
  },
  git = {
    enable = false,
    ignore = false,
    show_on_dirs = false,
    timeout = 400,
  },
  view = {
    width = 30
  }
})

-- Remaps
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NvimTreeRefresh <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeFindFile <cr>', { noremap = true })
