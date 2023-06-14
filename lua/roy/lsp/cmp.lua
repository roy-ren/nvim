local M = {}

M.setup = function()
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
        sources = {
            -- Copilot source
            { name = "copilot",  group_index = 2 },
            -- Other source
            { name = "nvim_lsp", group_index = 2 },
            { name = "path",     group_index = 2 },
            { name = "luaship",  group_index = 2 },
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
                symbol_map = { Copilot = "" },
                ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
            })
        }
    })
end

return M
