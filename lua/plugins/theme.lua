return {
	"olimorris/onedarkpro.nvim",
	priority = 1000, -- Ensure it loads first
	-- "catppuccin/nvim",
	-- name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = true,
	opts = function()
		vim.cmd("colorscheme onedark_dark")
	end,
}
