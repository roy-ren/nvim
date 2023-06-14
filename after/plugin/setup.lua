local import = require('roy.checker').module.import

-- config lsp
local lsp = import('roy.lsp.lsp')
if lsp then
    lsp.prepare()
    lsp.setup_auto_completion()
end

-- setup tree sitter
local treesitter_config = require('nvim-treesitter.configs')
if treesitter_config then
    local options = import('roy.plugin.configs.treesitter')
    if options then
        treesitter_config.setup(options)
    end
end
