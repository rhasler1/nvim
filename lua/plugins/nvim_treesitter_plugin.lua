-- setup nvim-treesitter config
local config = require("nvim-treesitter.configs")

config.setup({
    ensure_installed = {"lua", "javascript", "c", "rust", "python"},
    highlight = {enable = true},
    indent = {enable = true},
})

--{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},