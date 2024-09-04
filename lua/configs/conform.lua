-- TODO: Move config to plugins. Similar to debugger structure

-- Description: Conform format on command
vim.api.nvim_create_user_command("Format", function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format { async = true, lsp_format = "fallback", range = range }
end, { range = true })

-- Description: Conform options
local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    typescript = { "prettier" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    go = { "goimports" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 5000,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
