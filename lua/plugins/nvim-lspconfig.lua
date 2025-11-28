local function switch_source_header(client, bufnr)
    local method_name = "textDocument/switchSourceHeader"
    local params = vim.lsp.util.make_text_document_params(bufnr)
    client:request(method_name, params, function(err, result)
        if err then
            error(tostring(err))
        end
        if not result then
            vim.notify("corresponding file cannot be determined")
            return
        end
        vim.cmd.edit(vim.uri_to_fname(result))
    end, bufnr)
end

return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            -- 配置服务器
            servers = {
                -- 禁用 clangd
                clangd = false,
                -- 配置 ccls
                ccls = {
                    mason = false, -- ccls 不通过 mason 管理
                    cmd = { "ccls" },
                    filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "h", "ipp" },
                    root_markers = {
                        "compile_commands.json",
                        ".ccls",
                        ".git",
                    },
                    offset_encoding = "utf-32",
                    workspace_required = true,
                    single_file_support = true,
                    init_options = {
                        cache = {
                            directory = vim.fn.stdpath("cache") .. "/ccls",
                        },
                    },
                    on_attach = function(client, bufnr)
                        vim.api.nvim_buf_create_user_command(bufnr, "LspCclsSwitchSourceHeader", function()
                            switch_source_header(client, bufnr)
                        end, { desc = "Switch between source/header" })
                    end,
                    keys = {
                        {
                            "<leader>ch",
                            "<cmd>LspCclsSwitchSourceHeader<cr>",
                            desc = "Switch Source/Header (C/C++)",
                        },
                    },
                },
            },
        },
    },
}
