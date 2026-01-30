-- Use line numbers
vim.wo.number = true

-- Set line numbers to relative
vim.o.relativenumber = true

-- Sync clipboards with system
vim.o.clipboard = "unnamedplus"

-- Remove line wrapping
vim.o.wrap = false
vim.o.linebreak = true

-- Enable mouse mode, for when necessary
vim.o.mouse = "a"

-- Copy indent from current line when starting a new one
vim.o.autoindent = true

-- Case insensitive searching
vim.o.ignorecase = true

-- Smart case
vim.o.smartcase = true

-- Set indent width to 4
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4

-- Convert tabs to spaces
vim.o.expandtab = true

vim.diagnostic.config({ virtual_text = true })

-- vim.lsp.config("lua_ls", {
-- 	settings = {
-- 		Lua = {
-- 			diagnostics = {
-- 				globals = { "vim" },
-- 			},
-- 		},
-- 	},
-- })
