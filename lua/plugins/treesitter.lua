return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter_config = require("nvim-treesitter.configs")

        treesitter_config.setup({
            ensure_installed = {
                "lua",
                "c", 
                "rust", 
                "python",
                "vim",
                "vimdoc",
                "markdown",
                "markdown_inline",
            },
            highlight = {
                enable = true,
                -- list of languages that will be disabled
                disable = {},
                -- disable slow treesitter highlights for big files
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024 -- 100 KB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,   
            },
        })
    end
}
