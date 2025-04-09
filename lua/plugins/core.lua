return {
  { "folke/lazy.nvim", version = false },
  { "LazyVim/LazyVim", version = false, opts = {
    colorscheme = "catppuccin",
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
      flavour = "macchiato",
      -- flavour = "latte",
      -- transparent_background = true,
      styles = {
        functions = { "italic" },
        types = { "italic" },
      },
    },
  },
}
