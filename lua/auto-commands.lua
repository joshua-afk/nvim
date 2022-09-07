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
