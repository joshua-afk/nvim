lua <<EOF
local catppuccin = require("catppuccin")

-- configure it
catppuccin.setup({
integration = {
  treesitter = true,
  nvimtree = {
    enabled = true,
    show_root = true, -- makes the root folder not transparent
    transparent_panel = false, -- make the panel transparent
    },
  markdown = true
  },
})
EOF

let g:catppuccin_flavour = "mocha"
colorscheme catppuccin
