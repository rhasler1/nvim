local vim_options  = 'core.options'
local vim_mappings = 'core.mappings'

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
