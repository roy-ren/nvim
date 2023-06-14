local M = {}

M.setup = function()
    require('lspconfig.configs').dartls = {
        default_config = {
            name = 'dartls',
            cmd = { "dart", "language-server", "--protocol=lsp" },
            filetypes = { 'dart' },
            init_options = {
                closingLabels = true,
                flutterOutline = true,
                onlyAnalyzeProjectsWithOpenFiles = true,
                outline = true,
                suggestFromUnimportedLibraries = true
            },
            root_dir = require('lspconfig.util').root_pattern({ 'pubspec.yaml' }),
            settings = {
                dart = {
                    completeFunctionCalls = true,
                    showTodos = true
                }
            }
        }
    }
    local dartls = require('lspconfig').dartls
    if dartls then
        dartls.setup({})
    end
end

return M
