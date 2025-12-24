return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html", -- 需要安装 html parser 用于渲染题目
    dependencies = {
        -- include a picker of your choice, see picker section for more details
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        -- 这里填写配置，例如默认语言
        lang = "rust", -- 或者 "python3", "rust", "go"

        cn = { -- leetcode.cn
            enabled = false, ---@type boolean
            translator = true, ---@type boolean
            translate_problems = true, ---@type boolean
        },
        -- 更改题目和代码的存储路径
        storage = {
            home = vim.fn.stdpath("data") .. "/leetcode",
            cache = vim.fn.stdpath("cache") .. "/leetcode",
        },

        picker = {
            provider = "snacks-picker", -- 选择题目列表的插件
        },
        -- 只有在 dashboard 打开时才启用相关快捷键
        arg = "leetcode.nvim",
    },
}
