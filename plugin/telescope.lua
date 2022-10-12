api = vim.api
telescope = require('telescope')

-- Options
local ignore_these = {
    'node_modules/.*',
    '.git/.*',
    '.yarn/.*',
    '.neuron/*',
    'fonts/*',
    'icons/*',
    'images/*',
    'dist/*',
    'build/*',
    'yarn.lock',
    'package-lock.json',
    'vendor/*'
}

telescope.setup{
    defaults = {
        -- prompt_prefix = '🔍 ',
        color_devicons = false,
        layout_strategy = 'flex',
        file_ignore_patterns = ignore_these,
        -- preview = false
    },
    pickers = {
      find_files = {
        theme = "dropdown"
      }
    },
    extensions = {
      fzf = {
        fuzzy = true,                    -- false will only do exact matching
        override_generic_sorter = true,  -- override the generic sorter
        override_file_sorter = true,     -- override the file sorter
        case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      }
    }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
telescope.load_extension('fzf')

-- File Pickers
api.nvim_set_keymap('n', '<leader>ff', ':lua require("telescope.builtin").find_files() <cr>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fg', ':lua require("telescope.builtin").live_grep() <cr>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fb', ':lua require("telescope.builtin").buffers() <cr>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fh', ':lua require("telescope.builtin").help_tags() <cr>', { noremap = true })

-- Git
api.nvim_set_keymap('n', '<leader>fc', ':lua require("telescope.builtin").git_commits() <cr>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fgb', ':lua require("telescope.builtin").git_branches() <cr>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fs', ':lua require("telescope.builtin").git_status() <cr>', { noremap = true })
