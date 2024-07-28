require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

-- Copy relative path of current file to clipboard
vim.api.nvim_create_user_command("CopyRelPath", "call setreg('+', expand('%:.'))", {})

-- Mapping "shift+e" to run command lua vim.diagnostic.open_float()
vim.keymap.set("n", "<S-e>", "<Cmd>lua vim.diagnostic.open_float()<CR>", { noremap = true, silent = true })

-- Mapping "jj" to Escape
local options = { noremap = true, silent = true }
vim.keymap.set("i", "jj", "<Esc>", options)

-- Navigate buffer
vim.keymap.set("n", "<C-u>", ":bprevious<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-i>", ":bnext<cr>", { noremap = true, silent = true })

-- Close buffer without losing split window
vim.keymap.set("n", "<C-d>", ":bp|bd #<cr>", { noremap = true, silent = true })
vim.cmd.abbreviate("bc", "bp|bd #<cr>")

-- Close other buffers
vim.cmd.abbreviate("bonly", "%bd|e #<cr>")

-- Shortcut keys for telescope plugin
-- Helps finding files and text searches
local builtin = require "telescope.builtin"
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<C-f><C-f>", builtin.live_grep, {})

-- tmux navigate
vim.keymap.set("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>", { silent = true })

-- window resize
-- resize width
vim.keymap.set("v", "<C-u>", "5<C-w>>", { silent = true })
vim.keymap.set("v", "<C-i>", "5<C-w><", { silent = true })

-- resize height
vim.keymap.set("v", "<C-j>", "5<C-w>+", { silent = true })
vim.keymap.set("v", "<C-k>", "5<C-w>-", { silent = true })

-- mappings for debugger (nvim-dap)
require "plugins.debugger.mappings"
