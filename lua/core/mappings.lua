-- Vim key mappings

-- Map leader
vim.g.mapleader = ' '

-- TODO: [2/23/26] Add a mapping for the substitute command
-- e.g., :%s/old_word/new_word/g

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

vim.keymap.set(
    'n',
    '<leader>p',
    '"+p',
    { desc = 'Paste from system clipboard' }
)
