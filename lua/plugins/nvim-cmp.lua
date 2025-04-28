-- completion engine: completion sources are installed from external repositories and "sourced"

return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        --"hrsh7th/cmp-cmdline",
        "hrsh7th/nvim-cmp",
        -- snippet engine required
        "L3MON4D3/LuaSnip",
        --"saadparwaiz1/cmp_luasnip",
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- Setup cmp
        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                --['<Tab>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<Tab>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                --{ name = "luasnip" },
                { name = "buffer" },
            }),
            completion = {
                autocomplete = {
                    require("cmp.types").cmp.TriggerEvent.TextChanged
                },
                keyword_length = 2,
            },
            experimental = {
                ghost_text = false,
            },
        })
    end,
}
