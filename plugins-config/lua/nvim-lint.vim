lua << EOF
local signs = {
   Error = " ",
    Warn = " ",
    Hint = " ",
    Info = " "
}

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, {text = icon, texthl = hl, numhl = hl})
end

require('lint').linters_by_ft = {
  javascript = {'eslint'}
}
EOF

au BufWritePost <buffer> lua require('lint').try_lint()
