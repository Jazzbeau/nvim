require("core.options")
require("core.keymaps")

-- Store path to lazyvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- If not installed, fetch from repo
if not vim.uv.fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    -- Handle error
    if vim.v.shell_error ~= 0 then
        error("Error cloning lazy.nvim:\n" .. out)
    end
end

vim.opt.rtp:prepend(lazypath)

-- Install plugins via LazyVim
require("lazy").setup({
    -- NeoTree; file-manager
    require("plugins.theme"),
    require("plugins.neotree"),
    require("plugins.bufferline"),
    require("plugins.lualine"),
    require("plugins.treesitter"),
    require("plugins.telescope"),
    require("plugins.lsp"),
    require("plugins.autocomplete"),
    require("plugins.autoformat"),
    require("plugins.indent-blankline"),
    require("plugins.live-server"),
    require("plugins.lorem"),
    -- require("plugins.delimitMate"),
})
