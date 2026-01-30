return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = true,
	opts = function()
		vim.cmd("colorscheme catppuccin")
	end,
}
