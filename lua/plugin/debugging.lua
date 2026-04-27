return {
    "mfussenegger/nvim-dap",
    keys = {
        { "<leader>dt", function() require("dap").toggle_breakpoint() end },
        { "<leader>de", function() require("dapui").eval() end, mode = { "n", "v" } },
        { "<F1>",       function() require("dap").continue() end },
        { "<F2>",       function() require("dap").step_into() end },
        { "<F3>",       function() require("dap").step_over() end },
        { "<F4>",       function() require("dap").step_out() end },
        { "<F5>",       function() require("dap").step_back() end },
        { "<F6>",      function() require("dap").restart() end },
        { "<F12>",      function() require("dap").close() end },
    },
    dependencies = {
        {
            "rcarriga/nvim-dap-ui",
            dependencies = { "nvim-neotest/nvim-nio" },
        },
        "leoluz/nvim-dap-go",
        "mfussenegger/nvim-dap-python",
        "thehamsta/nvim-dap-virtual-text"
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        local virtualText = require("nvim-dap-virtual-text")
        virtualText.setup({})
        dapui.setup()
        require("dap-go").setup()

        require("dap-python").setup("uv")
        dap.configurations.python = {
            {
                type = "python",
                request = "launch",
                name = "FastAPI (uvicorn)",
                module = "uvicorn",
                args = {
                    "app.main:app",
                    "--host", "0.0.0.0",
                    "--port", "8000",
                },
                justMyCode = true,
            },

            {
                type = "python",
                request = "launch",
                name = "FastAPI (no reload)",
                module = "uvicorn",
                args = {
                    "main:app",
                    "--host", "0.0.0.0",
                    "--port", "8000",
                },
                justMyCode = true,
            },

            {
                type = "python",
                request = "attach",
                name = "Attach FastAPI (debugpy)",
                connect = {
                    host = "127.0.0.1",
                    port = 5678,
                },
            },
            {
                type = "python",
                request = "launch",
                name = "FastAPI (uvicorn dynamic port)",
                module = "uvicorn",
                args = function()
                    local port = vim.fn.input("Port: ", "8000")
                    return {
                        "app.main:app",
                        "--host", "0.0.0.0",
                        "--port", port,
                    }
                end,
                justMyCode = true,
            }
        }

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end
        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end
    end,

}
