-- return {}
return {
  {
    "saghen/blink.compat",
    -- use the latest release, via version = '*', if you also use the latest release for blink.cmp
    --  Luasnip has been moved to the `snippets` source, alongside a new preset system (`snippets.preset = 'luasnip'`). See the documentation for more information.
    -- version = "*",
    -- lazy.nvim will automatically load the plugin when it's required by blink.cmp
    lazy = true,
    -- make sure to set opts so that lazy.nvim calls blink.compat's setup
    opts = {},
  },
  {
    "saghen/blink.cmp",
    version = false,
    build = "cargo build --release",
    dependencies = {
      { "saghen/blink.compat" },
      { "Kaiser-Yang/blink-cmp-avante" },
    },
    opts = {
      keymap = {
        preset = "super-tab",
        ["<C-J>"] = { "show", "show_documentation", "hide_documentation" },
      },
      fuzzy = {
        sorts = {
          "exact",
          "score",
          "sort_text",
        },
      },
      sources = {
        default = {
          "avante",
          "lsp",
          "path",
          "snippets",
          "buffer",
        },
        providers = {
          avante = {
            module = "blink-cmp-avante",
            name = "Avante",
            opts = {
              -- options for blink-cmp-avante
            },
          },
        },
      },
    },
  },
}
