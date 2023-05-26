local M = {}

M.disable = {}

M.enable = {
    n = {
        ["<C-s>"] = {
            "<cmd>w<cr>",
            args = { desc = "保存文件" }
        },
        ["<C-h>"] = {
            "<C-w>h",
            args = { desc = "切换至左边窗口" }
        },
        ["<C-l>"] = {
            "<C-w>l",
            args = { desc = "切换至右边窗口" }
        },
        ["<C-j>"] = {
            "<C-w>j",
            args = { desc = "切换至下边窗口" }
        },
        ["<C-k>"] = {
            "<C-w>k",
            args = { desc = "切换至上边窗口" }
        },
        ["<C-x>"] = {
            "<cmd>NvimTreeToggle<cr>",
            args = { desc = "Toggle folder tree" }
        },
    },

    i = {
        ["<C-x>"] = {
            "<cmd>NvimTreeToggle<cr>",
            args = { desc = "Toggle folder tree" }
        },
        ["<C-s>"] = {
            "<Esc><cmd>w<cr>",
            args = { desc = "保存文件" }
        }
    }
}

return M
