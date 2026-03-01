return {
    "cajames/copy-reference.nvim",
    opts = {}, -- optional configuration
    keys = {
        { "<leader>gy", "<cmd>CopyReference file<cr>", mode = { "n" }, desc = "Copy file path" },
        { "<leader>yy", "<cmd>CopyReference line<cr>", mode = { "n" }, desc = "Copy file:line reference" },
        { "<leader>y", "<cmd>CopyReference line<cr>", mode = { "x" }, desc = "Copy file:line reference" },
    },
}
