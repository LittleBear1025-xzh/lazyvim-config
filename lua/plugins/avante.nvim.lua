-- return {}
return {
  "yetone/avante.nvim",

  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    -- add any opts here
    provider = "openai",
    -- provider = "copilot",
    -- auto_suggestions_provider = "openai",
    file_selector = {
      provider = "snacks",
    },
    openai = {
      endpoint = "https://api.deepseek.com",
      model = "deepseek-chat",
      max_tokens = 8192,
      temperature = 0,
      -- model = "deepseek-reasoner",
      --[[ temperature = function(context)
        -- 根据上下文动态设置temperature
        local filetype = vim.bo.filetype
        local prompt = context.prompt or ""

        -- 代码相关场景
        -- 检查是否是编程语言文件类型
        local code_filetypes = {
          lua = true,
          python = true,
          java = true,
          c = true,
          cpp = true,
          javascript = true,
          typescript = true,
          go = true,
          rust = true,
          ruby = true,
          php = true,
          sh = true,
          bash = true,
          zsh = true,
          vim = true,
          -- 添加其他编程语言文件类型
        }

        if code_filetypes[filetype] or prompt:match("code") then
          return 0
        end

        -- 文档/注释场景
        if filetype == "markdown" or prompt:match("comment") or prompt:match("doc") then
          return 0.3
        end

        -- 默认场景（解释/教学）
        return 0.5
      end, ]]
    },
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      -- ft = { "markdown", "Avante" },
    },
  },
}
