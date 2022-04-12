" lua << EOF
" local function prequire(...)
" local status, lib = pcall(require, ...)
" if (status) then return lib end
"     return nil
" end
"
" local luasnip = prequire('luasnip')
"
" local t = function(str)
"     return vim.api.nvim_replace_termcodes(str, true, true, true)
" end
"
" local check_back_space = function()
"     local col = vim.fn.col('.') - 1
"     if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
"         return true
"     else
"         return false
"     end
" end
"
" _G.tab_complete = function()
"     if vim.fn.pumvisible() == 1 then
"         return t "<C-l>"
"     elseif luasnip and luasnip.expand_or_jumpable() then
"         return t("<Plug>luasnip-expand-or-jump")
"     elseif check_back_space() then
"         return t "<Tab>"
"     else
"         return vim.fn['compe#complete']()
"     end
"     return ""
" end
" _G.s_tab_complete = function()
"     if vim.fn.pumvisible() == 1 then
"         return t "<C-p>"
"     elseif luasnip and luasnip.jumpable(-1) then
"         return t("<Plug>luasnip-jump-prev")
"     else
"         return t "<S-Tab>"
"     end
"     return ""
" end
"
" vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
" vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
" vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
" vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
" vim.api.nvim_set_keymap("i", "<C-E>", "<Plug>luasnip-next-choice", {})
" vim.api.nvim_set_keymap("s", "<C-E>", "<Plug>luasnip-next-choice", {})
"
" vim.keymap.set({ "i", "s" }, "<c-n>", function()
" 	if luasnip.expand_or_jumpable() then
" 		luasnip.expand_or_jump()
" 	end
" end, { silent = true })
"
" vim.keymap.set("n", "<leader><leader>s", "<cmd>source ~/.config/nvim/plugins-config/lua/luasnip.vim<CR>")
"
" require("luasnip.loaders.from_vscode").load({ include = { "javascript" } })
" EOF

" press <Tab> to expand or jump in a snippet. These can also be mapped separately
" via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
" -1 for jumping backwards.
inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr>

snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr>
snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr>

" For changing choices in choiceNodes (not strictly necessary for a basic setup).
imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'
smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'

lua << EOF
-- require("luasnip.loaders.from_vscode").load({ include = { "javascript" } })
require("luasnip.loaders.from_snipmate").load({ paths = { "~/.config/nvim/snippets" } })
EOF
