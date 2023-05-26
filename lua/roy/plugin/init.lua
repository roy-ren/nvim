local M = {
    {
        "nvim-lua/plenary.nvim",
        lazy = false,
    },
    {
        "ThePrimeagen/harpoon",
        lazy = false,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            { 'nvim-tree/nvim-web-devicons', opt = true },
            { 'RRethy/nvim-base16' },
        }
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    },
    {
        "onsails/lspkind.nvim"
    }
}

-- vim.tbl_deep_extend
-- local result = vim.tbl_deep_extend("force", person, someone)

return M
