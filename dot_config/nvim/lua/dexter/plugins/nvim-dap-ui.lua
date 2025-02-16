return {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
        local dap, dapui = require("dap"), require("dapui")

        dapui.setup()
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

        -- Toggle breakpoint
        vim.keymap.set("n", "<leader>db", function()
            dap.toggle_breakpoint()
        end, opts)

        -- Continue / Start
        vim.keymap.set("n", "<leader>dc", function()
            dap.continue()
        end, opts)

        -- Step Over
        vim.keymap.set("n", "<leader>do", function()
            dap.step_over()
        end, opts)

        -- Step Into
        vim.keymap.set("n", "<leader>di", function()
            dap.step_into()
        end, opts)

        -- Step Out
        vim.keymap.set("n", "<leader>dO", function()
            dap.step_out()
        end, opts)

        -- Keymap to terminate debugging
        vim.keymap.set("n", "<leader>dq", function()
            require("dap").terminate()
        end, opts)

        -- Toggle DAP UI
        vim.keymap.set("n", "<leader>du", function()
            dapui.toggle()
        end, opts)
    end
}
