local M = {
    { "nvim-lua/plenary.nvim" },
    { "ThePrimeagen/harpoon" },
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
    { "onsails/lspkind.nvim" },
    { "nvim-treesitter/nvim-treesitter" },
    -- file managing , picker etc
    {
        "nvim-tree/nvim-tree.lua",
        opts = function()
            return require("roy.plugin.configs.nvimtree")
        end,
        config = function(_, opts)
            require("nvim-tree").setup(opts)
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            { 'nvim-lua/plenary.nvim' },
        },
        cmd = "Telescope",
        opts = function()
            return require("roy.plugin.configs.telescope")
        end,
        config = function(_, opts)
            local telescope = require "telescope"
            telescope.setup(opts)
        end,
    },
    -- Only load whichkey after all the gui
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        keys = { "<leader>", '"', "'", "`", "c", "v" },
        config = function(_, opts)
            require("which-key").setup(opts)
        end,
    },
    {
        "ggandor/leap.nvim",
        dependencies = {
            { "tpope/vim-repeat" }
        },
    },
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    },
    {
        "zbirenbaum/copilot-cmp",
        config = function()
            require("copilot_cmp").setup()
        end
    },
    {
        'stevearc/dressing.nvim',
        opts = {},
    },
    {
        'akinsho/flutter-tools.nvim',
        lazy = false,
        dependencies = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    },
}

-- vim.tbl_deep_extend
-- local result = vim.tbl_deep_extend("force", person, someone)

return M
