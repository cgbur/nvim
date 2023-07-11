-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- motions while in insert mode

local map = vim.keymap.set
local del = vim.keymap.del

-- move in insert mode
map("i", "<C-e>", "<End>", { desc = "End of line" })
map("t", "<esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode", silent = true })
-- delete the esc esc mapping
del("t", "<esc><esc>")
