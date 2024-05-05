return {
	"johnfrankmorgan/whitespace.nvim",
	config = function()
		require("whitespace-nvim").setup({
			highlight = "DiffDelete",
			ignore_terminal = true,
			return_cursor = true,
			ignored_filetypes = { "TelescopePrompt", "Trouble", "help", "toggleterm" },
		})
		vim.keymap.set("n", "<Leader>tw", require("whitespace-nvim").trim)
	end,
}
