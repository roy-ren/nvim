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
lsp.set_server_config({
    on_init = function(client)
        client.server_capabilities.semanticTokensProvider = nil
    end
})

lsp.setup()

-- << lua config
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
-- << lua config
-- dart setup
require('roy.lsp.dart').setup()
require('roy.lsp.sourcekit').setup()

-- Autocompletion
-- 确保在 lsp-zero 之后设置 cmp ，这样你就可以正确地覆盖每个选项
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local lspkind = require('lspkind')

cmp.setup({
    -- make the first item in completion menu always be selected
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert'
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        --[[
        ['<Tab>'] = cmp_action.tab_complete(),
        ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
    --]]
    },

    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    formatting = {
        fields = { 'abbr', 'kind', 'menu' },
        format = lspkind.cmp_format({
            mode = 'symbol',       -- show only symbol annotations
            maxwidth = 50,         -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
            ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
        })
    }
})
