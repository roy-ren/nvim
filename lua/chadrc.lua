local M = {}

M.ui = {
  theme = "royite",
  statusline = {
    theme = "vscode", -- default/vscode/vscode_colored/minimal
  },

  -- tabufline = {
  --   lazyload = true,
  --   overriden_modules = nil,
  -- },
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

return M
