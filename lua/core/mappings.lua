-- Vim key mappings

-- Map leader
vim.g.mapleader = ' '

-- Test map leader
-- arg0: 'n'                = mapping only works in this mode ('n'=normal)
-- arg1: '<leader>1'        = key combination to trigger command or function
-- arg2: function() end     = the command or function to execute
-- arg3: desc               = description 
vim.keymap.set(
    'n',
    '<leader>1',
    function()
        print 'Testing leader'
    end,
    { desc = 'Leader test' }
)

vim.keymap.set(
    'n',
    '<leader>yy',
    '\"+yy',
    { desc = 'Yank current line to system clipboard' }
)
