return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = "false",
    build = ":TSUpdate",
    opts = {
        -- incremental_selection = {
        --   keymaps = {
        --     init_selection = "<cr>",
        --     node_incremental = "<cr>",
        --     node_decremental = "<bs>",
        --   },
        -- },
    },
}
