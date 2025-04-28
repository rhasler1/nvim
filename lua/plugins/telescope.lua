return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    keys = function ()
        local builtin = require("telescope.builtin")

        return {
            {
                "<leader>ff",
                builtin.find_files,
                desc = "Find Nonhidden Files"
            },
            {
                "<leader>fs",
                builtin.live_grep,
                desc = "Live Grep"
            },
            {
                "<leader>fh",
                builtin.help_tags,
                desc = "Help Tags"
            },
        }
    end,
}
