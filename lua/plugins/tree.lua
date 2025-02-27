return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        -- Disable netrw at the start
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- Custom attach function for key mappings
        local function my_on_attach(bufnr)
            local api = require("nvim-tree.api")

            local function opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- Default mappings
            api.config.mappings.default_on_attach(bufnr)

            -- Custom mappings
            vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
            vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
        end

        -- Setup nvim-tree
        require("nvim-tree").setup({
            on_attach = my_on_attach,
            sort = { sorter = "case_sensitive" },
            view = { width = 30 },
            renderer = { group_empty = true },
            filters = { dotfiles = true },
        })
    end,
}