lua <<EOF
require('modes').setup({
  -- Cursorline highlight opacity
  line_opacity = 0.1,

  -- Highlight cursor
  set_cursor = true,

  -- Highlight in active window only
  focus_only = false
})
EOF
