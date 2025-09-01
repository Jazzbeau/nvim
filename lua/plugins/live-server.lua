return {
	"barrett-ruth/live-server.nvim",
	build = "pnpm add -g live-server",
	cmd = { "LiveServerStart", "LiveServerStop" },
	opts = function()
		require("live-server").setup({
			args = { "--browser=chromium-browser" },
		})
	end,
	config = true,
}
