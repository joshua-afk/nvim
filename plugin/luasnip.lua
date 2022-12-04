local ls = require 'luasnip'
local types = require 'luasnip.util.types'

ls.setup({
  history = true,
  -- Update more often, :h events for more info.
	update_events = "TextChanged,TextChangedI",
  enable_autosnippets = true,
  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "choiceNode", "Comment" } },
      },
    },
  },
})

-- extend snippets
ls.filetype_extend("lua",        {"references"})
ls.filetype_extend("ruby",       {"references"})
ls.filetype_extend("blade",      {"references"})
ls.filetype_extend("javascript", {"references"})
ls.filetype_extend("blade",      {"references", "html"})
ls.filetype_extend("html",       {"references"})
ls.filetype_extend("eruby",      {"references", "html"})

require("luasnip.loaders.from_snipmate").load({ paths = { "~/.config/nvim/snippets" } })
