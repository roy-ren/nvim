local M = {}

M.disable = {}

M.enable = {
	n = {
		["<leader>pv"] = {
            rhs = "<cmd>Ex<cr>",
            args = { desc = "退出buffer"}
        },
		["<C-s>"] = { 
            rhs = "<cmd>w<cr>",
            args = { desc = "保存文件"}
        }
	},
	i = {
		["<C-s>"] = { 
            rhs = "<Esc><cmd>w<cr>",
            args = { desc = "保存文件"}
        }
	}
}

return M
