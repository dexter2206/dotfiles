return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = {},
	config = function()
		require("ibl").setup()

		vim.keymap.set("n", "<Leader>bl", function()
			require("ibl").setup_buffer(0, {
				enabled = not require("ibl.config").get_config(0).enabled,
			})
		end)
	end,
}
