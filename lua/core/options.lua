-- This file sets Vim options

-- Cursor
vim.opt.guicursor = ""

-- Line number
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8

-- Tab & indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Line wrap
vim.opt.wrap = false

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Use terminal color
-- If options fails to load, try setting to false
vim.opt.termguicolors = true

-- Timeout length for mapped key sequence
vim.opt.timeoutlen = 2000


