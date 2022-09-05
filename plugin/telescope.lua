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

require('telescope').setup{
    defaults = {
        prompt_prefix = '🔍 ',
        color_devicons = true,
        layout_strategy = 'flex',
        file_ignore_patterns = ignore_these,
    },
}

-- Remaps
vim.api.nvim_set_keymap('n', '<leader>ff', ':lua require("telescope.builtin").find_files() <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fg', ':lua require("telescope.builtin").live_grep() <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fb', ':lua require("telescope.builtin").buffers() <cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>fh', ':lua require("telescope.builtin").help_tags() <cr>', { noremap = true })

