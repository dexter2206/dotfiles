return {
    "mfussenegger/nvim-dap-python",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    config = function()
        require("dap-python").setup("$PYENV_ROOT/versions/debugpy/bin/python")
    end
}
