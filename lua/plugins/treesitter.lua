return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter_config = require("nvim-treesitter.configs")

        treesitter_config.setup({
            ensure_installed = {"lua", "javascript", "c", "rust", "python"},
            highlight = {enable = true},
            indent = {enable = true},
        })
    end
}