-- vim options
vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.timeoutlen = 1000

-- vim globals
vim.g.mapleader = " "

-- vim keymaps not including plugin keymaps
vim.keymap.set(
    "n",
    "<leader>1",
    function()
        print "Testing Leader"
    end,
    { desc = "Leader Test" }
)

vim.keymap.set(
    "n",
    "<leader>q",
    ":q<CR>",
    { desc = "Quit Current File" }
)

vim.keymap.set(
    "n",
    "<leader>w",
    ":w<CR>",
    { desc = "Write Current File" }
)

