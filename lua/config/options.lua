-- Options are automatically loaded before lazy.nvim startup
-- default options that are always set: https://github.com/lazyvim/lazyvim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 设置tab
local tab_num_equal_to_space = 2
vim.o.tabstop = tab_num_equal_to_space -- 一个 TAB 字符显示为 4 个空格
vim.o.expandtab = true -- 按 TAB 键会插入空格而不是 TAB 字符
vim.o.softtabstop = tab_num_equal_to_space -- 代替 TAB 字符插入的空格数
vim.o.shiftwidth = tab_num_equal_to_space -- 缩进时插入的空格数
