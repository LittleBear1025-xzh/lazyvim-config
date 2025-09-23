-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- neovide settings
if vim.g.neovide then
    -- vim.g.neovide_transparency = 0.8
    -- vim.g.neovide_normal_opacity = 0.8
    vim.o.guifont = "Maple Mono NF CN:h13"
    vim.g.neovide_remember_window_size = true
    vim.g.neovide_fullscreen = true
end
