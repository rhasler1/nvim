return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- disable netrw
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- keymaps
        vim.keymap.set(
            "n",
            "<leader>t",
            ":NvimTreeToggle<CR>",
            { desc = "Toggle File Tree" }
        )

        require("nvim-tree")
            .setup({
                view = { width = 30 },
            })
    end,
}
