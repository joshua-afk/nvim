--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- HTML
require'lspconfig'.html.setup {
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
  on_attach=require'completion'.on_attach,
}

-- PHP
require'lspconfig'.intelephense.setup{
  on_attach=require'completion'.on_attach,
}

-- Python
require'lspconfig'.pyright.setup{
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
  on_attach=require'completion'.on_attach,
}
