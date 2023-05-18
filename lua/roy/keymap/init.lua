local import = require('roy.checker').module.import

vim.g.mapleader = " "

local map = vim.keymap

-- map.set("n", "<leader>pv", vim.cmd.Ex)

local setup_maps = function(opts)
    for key, value in pairs(opts.maps) do
        local mode = opts.mode
        local lhs = key
        local rhs = value.rhs
        local desc = value.args.desc
        
        print(desc .. " mode:" .. mode .. " form[" .. lhs .. "] to[" .. tostring(rhs) .. "]")
        map.set(mode, lhs, rhs)
    end
end

local handle_maps = function(opts)
    setup_maps { mode ="n", maps = opts.enable.n }
    setup_maps { mode ="i", maps = opts.enable.i }
end


local global = import('roy.keymap.global')
handle_maps(global)
 
