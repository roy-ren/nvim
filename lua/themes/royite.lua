-- Credits to original https://github.com/tiagovla/tokyonight.nvim
-- This is modified version of it

local M = {}

-- {
--   "DVTSourceTextBackground": "#000000",
--   "DVTSourceTextBlockDimBackgroundColor": "#7F7F7F",
--   "DVTSourceTextCurrentLineHighlightColor": "#1A1919",
--   "DVTSourceTextInsertionPointColor": "#FFFFFF",
--   "DVTSourceTextInvisiblesColor": "#333333",
--   "DVTSourceTextSelectionColor": "#4A4740",
--   "DVTSourceTextSyntaxColors": {
--     "xcode.syntax.attribute": "#2D449A",
--     "xcode.syntax.character": "#7751FF",
--     "xcode.syntax.comment": "#00CC44",
--     "xcode.syntax.declaration.other": "#43A0C3",
--     "xcode.syntax.declaration.type": "#59B1FF",
--     "xcode.syntax.identifier.class": "#228142",
--     "xcode.syntax.identifier.class.system": "#0060FF",
--     "xcode.syntax.identifier.constant": "#228142",
--     "xcode.syntax.identifier.constant.system": "#0060FF",
--     "xcode.syntax.identifier.function": "#228142",
--     "xcode.syntax.identifier.function.system": "#0060FF",
--     "xcode.syntax.identifier.macro": "#E17C49",
--     "xcode.syntax.identifier.macro.system": "#E17C49",
--     "xcode.syntax.identifier.type": "#228142",
--     "xcode.syntax.identifier.type.system": "#0060FF",
--     "xcode.syntax.identifier.variable": "#228142",
--     "xcode.syntax.identifier.variable.system": "#0060FF",
--     "xcode.syntax.keyword": "#D31A94",
--     "xcode.syntax.mark": "#00CC44",
--     "xcode.syntax.markup.code": "#43A0C3",
--     "xcode.syntax.number": "#7751FF",
--     "xcode.syntax.plain": "#FFFFFF",
--     "xcode.syntax.preprocessor": "#E79048",
--     "xcode.syntax.regex": "#FF2B37",
--     "xcode.syntax.regex.capturename": "#228142",
--     "xcode.syntax.regex.charname": "#0060FF",
--     "xcode.syntax.regex.number": "#7751FF",
--     "xcode.syntax.regex.other": "#FFFFFF",
--     "xcode.syntax.string": "#FF2B37",
--     "xcode.syntax.url": "#3D5FFF"
--   }
-- }
M.base = {
  white = "#ffffff",
  darker_black = "#16161e",
  black = "#1a1b26",
  black2 = "#1f2336",
  one_bg = "#24283b",
  one_bg2 = "#414868",
  one_bg3 = "#353b45",
  grey = "#40486a",
  grey_fg = "#565f89",
  grey_fg2 = "#4f5779",
  light_grey = "#545c7e",
  red = "#f7768e",
  baby_pink = "#DE8C92",
  pink = "#ff75a0",
  line = "#32333e",
  green = "#9ece6a",
  vibrant_green = "#73daca",
  nord_blue = "#80a8fd",
  blue = "#7aa2f7",
  yellow = "#e0af68",
  sun = "#EBCB8B",
  purple = "#bb9af7",
  dark_purple = "#9d7cd8",
  teal = "#1abc9c",
  orange = "#ff9e64",
  cyan = "#7dcfff",
  statusline_bg = "#1d1e29",
  lightbg = "#32333e",
  pmenu_bg = "#7aa2f7",
  folder_bg = "#7aa2f7",
}

M.base_16 = {
  -- Default Background
  base00 = "#000000",
  -- Lighter Background (Used for status bars, line number and folding marks)
  base01 = "#16161e", -- not changed
  -- Selection Background
  base02 = "#4A4740",
  -- Comments, Invisibles, Line Highlighting
  base03 = "#00CC44",
  -- Dark Foreground (Used for status bars)
  base04 = "#787c99", -- not changed
  -- Default Foreground, Caret, Delimiters, Operators
  base05 = "#FFFFFF",
  -- Light Foreground (Not often used)
  base06 = "#cbccd1",
  -- Light Background (Not often used)
  base07 = "#d5d6db",
  -- Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted
  base08 = "#2D449A",
  -- Integers, Boolean, Constants, XML Attributes, Markup Link Url
  base09 = "#7751FF",
  -- Classes, Markup Bold, Search Text Background
  base0A = "#228142",
  -- Strings, Inherited Class, Markup Code, Diff Inserted
  base0B = "#FF2B37",
  -- Support, Regular Expressions, Escape Characters, Markup Quotes
  base0C = "#b4f9f8", -- not changed
  -- Functions, Methods, Attribute IDs, Headings
  base0D = "#0060FF",
  -- Keywords, Storage, Selector, Markup Italic, Diff Changed
  base0E = "#D31A94",
  -- Deprecated, Opening/Closing Embedded Language Tags, e.g. <?php ?>
  base0F = "#f7768e",
}

-- M.polish_hl = {
--   ["@variable"] = { fg = "#a9b1d6" },
--   ["@punctuation.bracket"] = { fg = "#bb9af7" },
--   ["@function.method.call"] = { fg = "#f7768e" },
--   ["@function.call"] = { fg = "#7aa2f7" },
--   ["@constant"] = { fg = "#ff9e64" },
--   ["@variable.parameter"] = { fg = "#ff9e64" },
-- }

M.type = "dark"

return M
