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

-- extend html snippet to blade
ls.filetype_extend("blade", {"html"})

require("luasnip.loaders.from_snipmate").load({ paths = { "~/.config/nvim/snippets" } })
