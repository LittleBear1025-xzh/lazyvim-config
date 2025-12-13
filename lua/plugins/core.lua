return {
    { "folke/lazy.nvim", version = false },
    { "LazyVim/LazyVim", version = false, opts = {
        colorscheme = "sonokai",
    } },
    {
        "folke/tokyonight.nvim",
        opts = function(_, opts)
            opts.transparent = true
            opts.style = "moon"
            opts.styles = { floats = "transparent", sidebars = "transparent" }
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        opts = {
            variant = "dawn",
            -- dim_inactive_windows = true,
            styles = {
                transparency = true,
            },
        },
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            flavour = "frappe",
            -- flavour = "latte",
            backgroud = {
                light = "latte",
                dark = "frappe",
            },
            transparent_background = (vim.g.neovide ~= nil),
            -- transparent_background = false,
            styles = {
                functions = { "italic" },
                types = { "italic" },
            },
        },
    },
    {
        "projekt0n/github-nvim-theme",
        name = "github-theme",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("github-theme").setup({
                -- ...
            })

            -- vim.cmd("colorscheme github_dark_dimmed")
        end,
    },
    {
        "sainnhe/sonokai",
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.sonokai_style = "atlantis"
            vim.g.sonokai_enable_italic = true
            -- vim.cmd.colorscheme("sonokai")
        end,
    },
}
