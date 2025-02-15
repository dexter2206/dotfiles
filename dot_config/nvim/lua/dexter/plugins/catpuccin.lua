return { 
    "catppuccin/nvim", 
    name = "catppuccin", 
    priority = 1001,
    config = function()
        require("catppuccin").setup({
            background = {
                light = "latte",
                dark = "mocha",
            },
        })
        vim.cmd.colorscheme("catppuccin")
    end,
}
