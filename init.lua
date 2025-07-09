require 'core.options'
require 'core.keymaps'

-- Store path to lazyvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
-- If not installed, fetch from repo
if not vim.uv.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    -- Handle error
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end

-- Setup colorscheme
-- vim.o.background = "dark"
-- vim.cmd([[colorscheme gruvbox]])

vim.opt.rtp:prepend(lazypath)

-- Install plugins via LazyVim
require('lazy').setup({
	-- NeoTree; file-manager
	{
		'nvim-neo-tree/neo-tree.nvim',
		version = '*',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-tree/nvim-web-devicons',
			'MunifTanjim/nui.nvim',
		},
		cmd = 'Neotree',
	},
	-- Colourscheme
	{
		'ellisonleao/gruvbox.nvim',
		lazy = false,
		priority = 1000,
		config = true,
		opts = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})
			vim.cmd('colorscheme gruvbox')
		end,
	},
})
