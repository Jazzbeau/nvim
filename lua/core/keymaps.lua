-- Map leader key to something a little more convenient
vim.g.mapleader = ' ' -- Space
vim.g.maplocalleader = ' '

-- Disable default behaviour in normal / visual mode (shifts cursor)
vim.keymap.set(
    { 'n', 'v' }, -- In normal and visual mode
    '<Space>',    -- Map space to
    '<Nop>',      -- 'No Operation'
    { silent = true } -- Hide from commandline
)

-- These will be used a lot
local opts = { noremap = true, silent = true }

-- Don't save single character deletes to register
-- vim.keymap.set('n', 'x', '"_x', opts)

-- Nice, stolen. When using ctrl u / d to scroll, centre 'zz' by default
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- Resize buffers using arrows
vim.keymap.set('n', '<Up>',    ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>',  ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>',  ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffer navigation
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)      -- Next buffer with tab
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)    -- Previous buffer with S-Tab
vim.keymap.set('n', '<leader>bd',':bdelete!<CR>', opts)  -- Delete buffer with leader + x
vim.keymap.set('n', '<leader>bo', '<cmd> enew <CR>', opts)  -- New buffer with leader + b

-- Pane / Window management
-- Leader -> [W]indow -> [C]reate -> [V]ertical OR [H]orizontal
-- Leader -> [W]indow -> [E]qual size
-- Leader -> [W]indow -> [D]elete
vim.keymap.set('n', '<leader>wcv', '<C-w>v', opts)
vim.keymap.set('n', '<leader>wch', '<C-w>s', opts)
vim.keymap.set('n', '<leader>we', '<C-w>=', opts)
vim.keymap.set('n', '<leader>wd', ':close<CR>', opts)

-- Pane / Window navigation
-- Leader -> [W]indow -> HJKL
vim.keymap.set('n', '<leader>wh', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<leader>wj', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<leader>wk', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<leader>wl', ':wincmd l<CR>', opts)

-- Tab Management
-- Leader -> [T]ab -> [O]pen
-- Leader -> [T]ab -> [D]elete
-- Leader -> [T]ab -> H / L
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts)
vim.keymap.set('n', '<leader>td', ':tabclose<CR>', opts)
vim.keymap.set('n', '<leader>tl', ':tabn<CR>', opts)
vim.keymap.set('n', '<leader>th', ':tabp<CR>', opts)

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)


-- Stay in indent mode when using < and > in visual mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when overwriting
vim.keymap.set('v', 'p', '"_dP', opts)

-- Diagnostic browsing
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to prev diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open diagnostic list' })





-- vim.keymap.set('', '', '', opts)
