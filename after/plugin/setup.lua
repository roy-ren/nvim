local import = require('roy.checker').module.import

--<< config lsp
local lsp = import('roy.lsp.lsp')
if lsp then
    lsp.prepare()
end

local cmp = import('roy.lsp.cmp')
if cmp then
    cmp.setup()
end

--<< setup tree sitter
local treesitter_config = require('nvim-treesitter.configs')
if treesitter_config then
    local options = import('roy.plugin.configs.treesitter')
    if options then
        treesitter_config.setup(options)
    end
end

--<< setup leap
require('leap').add_default_mappings()

--<< copilot
require("copilot").setup({
    suggestion = { enabled = false },
    panel = { enabled = false },
})

--<< flutter
local options = import('roy.plugin.configs.flutter')
require("flutter-tools").setup(options)
