require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

vim.api.nvim_create_user_command("CopyRelPath", "call setreg('+', expand('%'))", {})

-- Mapping "jj" to Escape
local options = { noremap = true, silent = true }
vim.keymap.set("i", "jj", "<Esc>", options)

-- Navigate buffer
vim.keymap.set("n", "<C-u>", ":bp<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-i>", ":bn<cr>", { noremap = true, silent = true })

-- Close buffer without losing split window
vim.keymap.set("n", "<C-d>", ":bp|bd #<cr>", { noremap = true, silent = true })
vim.cmd.abbreviate("bc", "bp|bd #<cr>")

-- Close other buffers
vim.cmd.abbreviate("bonly", "%bd|e #<cr>")

-- Shortcut keys for telescope plugin
-- Helps finding files and text searches
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<C-f><C-f>", builtin.live_grep, {})

-- tmux navigate
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })
