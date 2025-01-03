-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

local M = {}

M.base46 = {
  theme = "chadracula-evondev", -- Main theme at home to avoid monitor flickering
  -- theme = "chadracula-evondev", -- Usual theme

  hl_override = {
    TelescopeSelection = {
      bold = true,
      bg = "#3909bd",
    },
  },
}

return M
