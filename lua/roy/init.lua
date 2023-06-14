local import = require('roy.checker').module.import

-- config settings
import('roy.settings')

-- add plugin manager lazyvim
-- handle plugins
local lazyvim = import('roy.lazyvim')
local plugins = import('roy.plugin')
if lazyvim then
    if plugins then
        lazyvim.setup(plugins)
    end
end

-- config keymaps
local keymap = import('roy.keymap')
if keymap then
    keymap.setup()
end
