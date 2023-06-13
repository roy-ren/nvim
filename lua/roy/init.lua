local import = require('roy.checker').module.import

-- config settings
import('roy.settings')

-- add plugin manager lazyvim
-- handle plugins
local lazyvim = import('roy.lazyvim')
local plugins = import('roy.plugin')
lazyvim.setup(plugins)

-- config keymaps
local keymap = import('roy.keymap')
keymap.setup()

-- config lsp
local lsp = import('roy.lsp.lsp')
lsp.prepare()
lsp.setup_auto_completion()
