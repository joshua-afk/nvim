g = vim.g

g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha

require("catppuccin").setup({
  transparent_background = true,
})

vim.cmd [[colorscheme catppuccin]]
