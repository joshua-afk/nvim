lua << EOF
local null_ls = require('null-ls')
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

sources = {
	debug = false,
	sources = {
		diagnostics.eslint
	},
}

null_ls.setup(sources)
EOF

