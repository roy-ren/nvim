local import = require('roy.checker').module.import

-- config settings
import('roy.settings')

-- config keymaps
local keymap = import('roy.keymap')
keymap.setup()

-- add plugin manager lazyvim
local lazyvim = import('roy.lazyvim')

-- handle plugins
local plugins = import({ 'roy.plugin', check = true })
lazyvim.setup(plugins)
