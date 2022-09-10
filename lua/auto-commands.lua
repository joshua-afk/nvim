-- Cursor Line
local cursor_line = vim.api.nvim_create_augroup('CursorLine', {clear = true})

vim.api.nvim_create_autocmd('VimEnter', {
  pattern = '*',
  group = cursor_line,
  command = 'setlocal cursorline'
})

vim.api.nvim_create_autocmd('WinEnter', {
  pattern = '*',
  group = cursor_line,
  command = 'setlocal cursorline'
})

vim.api.nvim_create_autocmd('BufWinEnter', {
  pattern = '*',
  group = cursor_line,
  command = 'setlocal cursorline'
})

vim.api.nvim_create_autocmd('WinLeave', {
  pattern = '*',
  group = cursor_line,
  command = 'setlocal nocursorline'
})

-- Quick Scope
local qs_colors = vim.api.nvim_create_augroup('qs_colors', {clear = true})

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  group = qs_colors,
  command = "highlight QuickScopePrimary guifg='#e28b8e' gui=underline ctermfg=155 cterm=underline"
})

vim.api.nvim_create_autocmd('ColorScheme', {
  pattern = '*',
  group = qs_colors,
  command = "highlight QuickScopeSecondary guifg='#ebddaa' gui=underline ctermfg=81 cterm=underline"
})
