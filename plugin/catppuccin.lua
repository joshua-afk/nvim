g = vim.g

g.catppuccin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
local colors = require("catppuccin.palettes").get_palette()

-- for transparent background
-- colors.none = "NONE"

require("catppuccin").setup({
  transparent_background = false,
  term_colors = true,
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.15,
	},
	styles = {
		comments = { "italic" },
		conditionals = { "italic" },
		loops = {},
		functions = { "bold" },
		keywords = {},
		strings = {},
		variables = {},
		numbers = {},
		booleans = {},
		properties = {},
		types = {},
		operators = {},
	},
	integrations = {
		cmp = true,
		gitsigns = false,
		nvimtree = true,
		telescope = true,
		treesitter = true,
	},
	color_overrides = {},
  custom_highlights = {
    LineNr = { fg = colors.lavender },
    LineNrAbove = {},
    LineNrBelow = {}
  }
  -- Transparent background tweaks
	-- custom_highlights = {
	-- 	Comment = { fg = colors.overlay1 },
	-- 	LineNr = { fg = colors.overlay1 },
	-- 	CursorLine = { bg = colors.none },
	-- 	CursorLineNr = { fg = colors.lavender },
	-- 	DiagnosticVirtualTextError = { bg = colors.none },
	-- 	DiagnosticVirtualTextWarn = { bg = colors.none },
	-- 	DiagnosticVirtualTextInfo = { bg = colors.none },
	-- 	DiagnosticVirtualTextHint = { bg = colors.none },
	-- }
})

vim.cmd [[colorscheme catppuccin]]
