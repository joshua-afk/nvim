--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lsp = require"lspconfig"
local coq = require"coq"

-- HTML
lsp.html.setup {
    cmd = { "vscode-html-language-server", "--stdio" },
    filetypes = { "html" },
    init_options = {
        configurationSection = { "html", "css", "javascript" },
        embeddedLanguages = {
            css = true,
            javascript = true
        },
    },
    root_dir = function(fname)
        return util.root_pattern('package.json', '.git')(fname) or util.path.dirname(fname)
    end,
    settings = {},
    capabilities = capabilities,
}

-- PHP
lsp.intelephense.setup {
    coq.lsp_ensure_capabilities{
        cmd = { "intelephense", "--stdio" },
        filetypes = { "php" },
        capabilities = capabilities,
    }
}

-- Python
lsp.pyright.setup{
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    root_dir = function(fname)
        local root_files = {
            'pyproject.toml',
            'setup.py',
            'setup.cfg',
            'requirements.txt',
            'Pipfile',
            'pyrightconfig.json',
        }
        return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname) or util.path.dirname(fname)
    end,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true
            }
        }
    },
    -- on_attach=require'coq'.on_attach,
    capabilities = capabilities,
}
