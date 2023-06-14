local M = {}

M.disable = {}

local builtin = require('telescope.builtin')
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

M.enable = {
    n = {
        ["<C-s>"] = { "<cmd>w<cr>", args = { desc = "保存文件" } },
        ["<C-h>"] = { "<C-w>h", args = { desc = "切换至左边窗口" } },
        ["<C-l>"] = { "<C-w>l", args = { desc = "切换至右边窗口" } },
        ["<C-j>"] = { "<C-w>j", args = { desc = "切换至下边窗口" } },
        ["<C-k>"] = { "<C-w>k", args = { desc = "切换至上边窗口" } },
        ["<C-x>"] = { "<cmd>NvimTreeToggle<cr>", args = { desc = "Toggle folder tree" } },
        ["<C-e>"] = { ui.toggle_quick_menu, args = { desc = "toggle harpoon quick menu" } },
        ["<leader>ff"] = { builtin.find_files, args = { desc = "Find files" } },
        ["<leader>fg"] = { builtin.live_grep, args = { desc = "live_grep" } },
        ["<leader>fb"] = { builtin.buffers, args = { desc = "find buffers" } },
        ["<leader>fh"] = { builtin.help_tags, args = { desc = "find help tags" } },
        ["<Leader>a"] = { mark.add_file, args = { desc = "add file to harpoon mark" } },
    },

    i = {
        ["<C-s>"] = { "<Esc><cmd>w<cr>", args = { desc = "保存文件" } },
        ["<C-x>"] = { "<cmd>NvimTreeToggle<cr>", args = { desc = "Toggle folder tree" } },
        ["<C-e>"] = { ui.toggle_quick_menu, args = { desc = "toggle harpoon quick menu" } },
    }
}

return M
