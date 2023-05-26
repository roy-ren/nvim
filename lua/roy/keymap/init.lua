local import = require('roy.checker').module.import

local setup_maps = function(opts)
    local map = vim.keymap

    for key, value in pairs(opts.maps) do
        local mode = opts.mode
        local lhs = key
        local rhs = value[1]
        local desc = value.args.desc

        -- print(desc .. " mode:" .. mode .. " form[" .. lhs .. "] to[" .. tostring(rhs) .. "]")
        map.set(mode, lhs, rhs)
    end
end

local handle_maps = function(opts)
    setup_maps { mode = "n", maps = opts.enable.n }
    setup_maps { mode = "i", maps = opts.enable.i }
end

vim.g.mapleader = " "

local M = {}

M.setup = function()
    local global = import('roy.keymap.global')
    handle_maps(global)
end

return M
