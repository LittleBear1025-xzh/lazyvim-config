-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- neovide settings
if vim.g.neovide then
    vim.g.neovide_opacity = 0.95
    -- vim.g.neovide_normal_opacity = 0.8
    vim.o.guifont = "Maple Mono NF CN:h15"
    vim.g.neovide_remember_window_size = true
    -- vim.g.neovide_fullscreen = true
    -- 输入与剪贴板
    vim.g.neovide_input_macos_option_key_is_meta = false
    vim.opt.clipboard = "unnamedplus"
    vim.g.neovide_cursor_cell_color_fallback = true
    vim.g.neovide_fullscreen = true
    -- 添加粘贴快捷键
    local function paste()
        vim.api.nvim_paste(vim.fn.getreg("+"), true, -1)
    end

    vim.keymap.set({ "n", "i", "v", "c", "t" }, "<S-C-v>", paste, {
        silent = true,
        desc = "Paste from system clipboard",
    })
end
