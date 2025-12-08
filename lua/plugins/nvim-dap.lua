return {
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    keys = {
      -- add a keymap to browshttps://github.com/cmu-db/bustub.gite plhttps://github.com/cmu-db/bustub.gitugin files
      -- stylua: ignore
      {
        "<f5>",
        function() require("dap").continue() end,
        desc = "launch/continue gdb",
      },
      {
        "<f10>",
        function()
          require("dap").step_over()
        end,
        desc = "单步调试",
      },
      {
        "<f11>",
        function()
          require("dap").step_into()
        end,
        desc = "步入",
      },
      {
        "<f12>",
        function()
          require("dap").step_out()
        end,
        desc = "步出",
      },
      {
        "<C-f5>",
        function ()
          require("dap").terminate()
        end,
        desc = "终止程序"
      }
    },
    -- config = function ()
    --   local dap = require('dap')
    --   dap.adapters.gdb = {
    --     type = "executable",
    --     command = "gdb",
    --     args = { "--interpreter=dap", "--eval-command", "set print pretty on" , "set scheduler-locking on"}
    --   }
    --   dap.configurations.cpp = {
    --     {
    --       name = "Launch",
    --       type = "gdb",
    --       request = "launch",
    --       program = function()
    --         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --       end,
    --       args = {}, -- provide arguments if needed
    --       cwd = "${workspaceFolder}",
    --       stopAtBeginningOfMainSubprogram = false,
    --     },
    --     {
    --       name = "Select and attach to process",
    --       type = "gdb",
    --       request = "attach",
    --       program = function()
    --         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --       end,
    --       pid = function()
    --         local name = vim.fn.input('Executable name (filter): ')
    --         return require("dap.utils").pick_process({ filter = name })
    --       end,
    --       cwd = '${workspaceFolder}'
    --     },
    --     {
    --       name = 'Attach to gdbserver :1234',
    --       type = 'gdb',
    --       request = 'attach',
    --       target = 'localhost:1234',
    --       program = function()
    --         return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    --       end,
    --       cwd = '${workspaceFolder}'
    --     },
    --   }
    -- end
  }
}
