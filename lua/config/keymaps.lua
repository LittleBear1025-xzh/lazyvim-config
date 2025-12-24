-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

-- map({ "n", "x", "o", "c", "t" }, "<C-[>", "J", { noremap = true, silent = true })
-- map("t", "<C-h>", "<BS>", opt)
map({ "n", "x", "o" }, "H", "^", opt)
map({ "n", "x", "o" }, "L", "$", opt)
map({ "n", "x", "o" }, "J", "5j", opt)
map({ "n", "x", "o" }, "K", "5k", opt)
map("n", "g<leader>", "2g;", opt)
map("n", "<C-e>", "3<C-e>", opt)
map("n", "<C-y>", "3<C-y>", opt)
map("n", "<A-h>", "<Cmd>bp<CR>", opt)
map("n", "<A-l>", "<Cmd>bn<CR>", opt)

if vim.g.vscode then
    local vscode = require("vscode-neovim")

    -- 2. 定义 <Space>e 调用文件资源管理器
    -- 注意：这里使用 <leader>e，也就是 Space e
    map("n", "<leader>e", function()
        vscode.call("workbench.view.explorer")
    end, opt)

    map("n", "]e", function()
        vscode.call("editor.action.marker.nextInFiles")
    end, opt)
    map("n", "[e", function()
        vscode.call("editor.action.marker.prevInFiles")
    end, opt)

    map("n", "<leader>aa", function()
        vscode.call("antigravity.prioritized.chat.open")
    end, opt)
    -- 你可以在这里添加更多 Space 开头的映射
    -- keymap("n", "<leader>w", function() vscode.call("workbench.action.files.save") end, opts)
end
