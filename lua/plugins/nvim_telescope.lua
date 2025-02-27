local builtin = require("telescope.builtin")

-- Set up keybindings
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- Setup Telescope (if additional configuration is needed)
require("telescope").setup({})