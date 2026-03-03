local vim_options  = 'core.options'
local vim_mappings = 'core.mappings'
local lazy         = 'lazy.lazy'

local ok

ok = pcall(require, vim_options)
if not ok then
    print('Failed to load Vim options from',vim_options)
else
    --print('Vim options loaded from',vim_options)
end

ok = pcall(require, vim_mappings)
if not ok then
    print('Failed to load Vim key mappings from',vim_mappings)
else
    --print('Vim key mappings loaded from',vim_mappings)
end

ok = pcall(require, lazy)
if not ok then
    print('Failed to load lazy from',lazy)
end

