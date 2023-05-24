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
        "folke/tokyonight.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            vim.cmd([[colorscheme tokyonight]])
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
}

-- vim.tbl_deep_extend
-- local result = vim.tbl_deep_extend("force", person, someone)

return M

