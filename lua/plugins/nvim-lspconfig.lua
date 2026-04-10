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
                -- 在这里添加 clangd 的配置
                clangd = {
                    cmd = {
                        "clangd",
                        "--fallback-style=WebKit",
                    },
                },
            },
        },
    },
}
