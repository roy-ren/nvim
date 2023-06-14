local M = {}

M.prepare = function()
    local lsp = require('lsp-zero').preset({})

    -- setup after buffer on attach
    lsp.on_attach(function(client, bufnr)
        lsp.default_keymaps({ buffer = bufnr })

        local opts = { buffer = bufnr, noremap = true, silent = true }

        vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
        vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
        vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
        vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
        vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
        vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
        vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
        vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
        vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

        vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
        vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
        vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)

        -- Format file on save
        lsp.buffer_autoformat()
    end)

    -- ensure automatic installed language servers
    lsp.ensure_installed({ 'lua_ls' })

    -- sign icons
    lsp.set_sign_icons({
        error = '✘',
        warn = '▲',
        hint = '⚑',
        info = '»'
    })

    lsp.setup()

    -- << lua config
    require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

    -- dart setup
    require('roy.lsp.language.dart').setup()
    require('roy.lsp.language.sourcekit').setup()
end

return M
