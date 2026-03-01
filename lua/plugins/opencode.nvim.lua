-- return {}
return {
    "sudo-tee/opencode.nvim",
    config = function()
        require("opencode").setup({
            keymap = {
                input_window = {
                    ["<cr>"] = { "submit_input_prompt", mode = { "i" } }, -- Submit prompt (normal mode and insert mode)
                    ["<S-cr>"] = false,
                },
            },
        })
    end,
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
                anti_conceal = { enabled = false },
                file_types = { "markdown", "opencode_output" },
            },
            ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
        },
        -- Optional, for file mentions and commands completion, pick only one
        "saghen/blink.cmp",

        -- Optional, for file mentions picker, pick only one
        "folke/snacks.nvim",
    },
}
-- return {
--   "NickvanDyke/opencode.nvim",
--   dependencies = {
--     -- Recommended for `ask()` and `select()`.
--     -- Required for `snacks` provider.
--     ---@module 'snacks' <- Loads `snacks.nvim` types for configuration intellisense.
--     { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
--   },
--   config = function()
--     ---@type opencode.Opts
--     vim.g.opencode_opts = {
--       -- Your configuration, if any — see `lua/opencode/config.lua`, or "goto definition" on the type or field.
--     }
--
--     -- Required for `opts.events.reload`.
--     vim.o.autoread = true
--
--     -- Recommended/example keymaps.
--     vim.keymap.set({ "x", "o" }, "<leader>aa", function() return require("opencode").operator("@this ") end,        { desc = "Add range to opencode", expr = true })
--     vim.keymap.set({ "n" }, "<leader>aa", function() require("opencode").toggle() end,                          { desc = "Toggle opencode" })
--     vim.keymap.set({ "n" }, "<leader>at", function() require("opencode").toggle() end,                          { desc = "Toggle opencode" })
--     -- vim.keymap.set({ "n", "x" }, "<C-a>", function() require("opencode").ask("@this: ", { submit = true }) end, { desc = "Ask opencode…" })
--     -- vim.keymap.set({ "n", "x" }, "<C-x>", function() require("opencode").select() end,                          { desc = "Execute opencode action…" })
--     -- vim.keymap.set({ "n", "t" }, "<C-.>", function() require("opencode").toggle() end,                          { desc = "Toggle opencode" })
--     --
--     -- vim.keymap.set({ "n", "x" }, "go",  function() return require("opencode").operator("@this ") end,        { desc = "Add range to opencode", expr = true })
--     -- vim.keymap.set("n",          "goo", function() return require("opencode").operator("@this ") .. "_" end, { desc = "Add line to opencode", expr = true })
--
--     vim.keymap.set("n", "<S-C-u>", function() require("opencode").command("session.half.page.up") end,   { desc = "Scroll opencode up" })
--     vim.keymap.set("n", "<S-C-d>", function() require("opencode").command("session.half.page.down") end, { desc = "Scroll opencode down" })
--
--     -- You may want these if you stick with the opinionated "<C-a>" and "<C-x>" above — otherwise consider "<leader>o…".
--     vim.keymap.set("n", "+", "<C-a>", { desc = "Increment under cursor", noremap = true })
--     vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement under cursor", noremap = true })
--   end,
-- }
