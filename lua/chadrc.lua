-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tokyodark", -- Main theme at home to avoid monitor flickering
  -- theme = "chadracula-evondev", -- Usual theme

  hl_override = {
    TelescopeSelection = {
      bold = true,
      bg = "#3909bd",
    },
  },

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
