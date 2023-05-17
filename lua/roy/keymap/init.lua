local import = require('roy.checker').module.import
local normal = import('roy.keymap.normal')

vim.g.mapleader = " "

local map = vim.keymap

map.set("n", "<leader>pv", vim.cmd.Ex)

