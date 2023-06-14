local M = {}

M.setup = function()
    require('lspconfig.configs').sourcekit = {
        default_config = {
            name = 'sourcekit',
            cmd = { "sourcekit-lsp" },
            filetypes = { "swift", "c", "cpp", "objective-c", "objective-cpp" },
            root_dir = require('lspconfig.util').root_pattern("Package.swift", ".git"),
        }
    }
    local sourcekit = require('lspconfig').sourcekit
    if sourcekit then
        sourcekit.setup({})
    end
end

return M
