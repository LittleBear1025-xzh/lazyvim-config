-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

map("n", "<C-[>", "<Esc>", opt)
map("i", "<C-h>", "<BS>", opt)
map({ "n", "x", "o" }, "H", "^", opt)
map({ "n", "x", "o" }, "L", "$", opt)
map({ "n", "x", "o" }, "J", "5j", opt)
map({ "n", "x", "o" }, "K", "5k", opt)
map("n", "<A-h>", "<Cmd>bp<CR>", opt)
map("n", "<A-l>", "<Cmd>bn<CR>", opt)
map("n", "g<leader>", "2g;", opt)
map("n", "<C-e>", "3<C-e>", opt)
map("n", "<C-y>", "3<C-y>", opt)
