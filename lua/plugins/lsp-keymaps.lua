return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            ["*"] = {
                keys = {
                    { "K", "5k" },
                    {
                        "gh",
                        function()
                            return vim.lsp.buf.hover()
                        end,
                        desc = "Hover",
                    },
                },
            },
        },
    },
}
