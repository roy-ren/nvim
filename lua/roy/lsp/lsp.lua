local M = {}

M.prepare = function()
    local lsp = require('lsp-zero').preset({})

    -- setup after buffer on attach
    lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr })

        -- Format file on save
        lsp.buffer_autoformat()
    end)

    -- ensure automatic installed language servers
    lsp.ensure_installed({
        'lua_ls',
    })

    -- sign icons
    lsp.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
    })

    -- Neovim v0.9 允许 LSP 服务器定义高亮组，这被称为语义标记。默认情况下启用此新功能。要禁用它，我们需要修改语言服务器的 server_capabilities 属性，更具体地说，我们需要“删除” semanticTokensProvider 属性。
    --[[
    lsp.set_server_config({
        on_init = function(client)
            client.server_capabilities.semanticTokensProvider = nil
        end
    })
    --]]

    lsp.setup()

    -- << lua config
    require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
    -- << lua config
    -- dart setup
    require('roy.lsp.language.dart').setup()
    require('roy.lsp.language.sourcekit').setup()
end

return M
