vim.keymap.set("n", "<Leader>b", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })

vim.keymap.set("n", "<leader>td", function()
  require("dap-go").debug_test()
end, { silent = true, desc = "Debug Test" })

vim.keymap.set("n", "<F5>", function()
  require("dap").continue()
end)

-- dap-ui has this opened by default already
-- vim.keymap.set("n", "<Leader>dr", function()
--   require("dap").repl.open()
-- end)

vim.keymap.set({ "n", "v" }, "<Leader>dp", function()
  require("dap.ui.widgets").preview()
end)

vim.keymap.set("n", "<F10>", function()
  require("dap").step_over()
end)
vim.keymap.set("n", "<F11>", function()
  require("dap").step_into()
end)
vim.keymap.set("n", "<F12>", function()
  require("dap").step_out()
end)
