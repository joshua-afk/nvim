--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- coq settings
vim.g.coq_settings = {
  auto_start = 'shut-up',
  display = {
    pum = {
      fast_close = false
    }
  },
  keymap = {
    recommended = false,
    pre_select = true
  },
}

local lsp = require "lspconfig"
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

-- Javascript/Eslint
lsp.eslint.setup {
  cmd = { "vscode-eslint-language-server", "--stdio" },
  filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue" },
  on_new_config = function(config, new_root_dir)
    config.settings.workspaceFolder = {
      uri = new_root_dir,
      name = vim.fn.fnamemodify(new_root_dir, ':t'),
    }
  end,
  root_dir = function(startpath)
    return M.search_ancestors(startpath, matcher)
  end,
  settings = {
    codeAction = {
      disableRuleComment = {
        enable = true,
        location = "separateLine"
      },
      showDocumentation = {
        enable = true
      }
    },
    codeActionOnSave = {
      enable = false,
      mode = "all"
    },
    format = true,
    nodePath = "",
    onIgnoredFiles = "off",
    packageManager = "npm",
    quiet = false,
    rulesCustomizations = {},
    run = "onType",
    useESLintClass = false,
    validate = "on",
    workingDirectory = {
      mode = "auto"
    }
  }
}

-- PHP
lsp.intelephense.setup {
  cmd = { "intelephense", "--stdio" },
  filetypes = { "php" },
  capabilities = capabilities,
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
