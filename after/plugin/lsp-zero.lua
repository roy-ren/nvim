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

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

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

            -- The function below will be called before any actual modifications from lspkind
            -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
            before = function(entry, vim_item)
                return vim_item
            end
        })
    }
})
