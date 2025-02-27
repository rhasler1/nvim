local builtin = require("telescope.builtin")

-- Global Keymaps
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})

-- nvim-tree custom mappings
vim.keymap.set('n', '<C-t>', require("nvim-tree.api").tree.change_root_to_parent, { desc = "nvim-tree: Up" })
vim.keymap.set('n', '?', require("nvim-tree.api").tree.toggle_help, { desc = "nvim-tree: Help" })