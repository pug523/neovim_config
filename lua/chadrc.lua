-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "carbonfox",

  hl_override = {
    Comment = { italic = true, fg = "#888888" },
    ["@comment"] = { italic = true, fg = "#888888", bold = true },
  },
}

return M
