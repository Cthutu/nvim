-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
	    { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
	    { out, "WarningMsg" },
	    { "\nPress any key to exit..." },
	}, true, {})
	vim.fn.getchar()
	os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup 'mapleader' and 'maplocalleader' before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup options before loading plugins just in case the
-- plugins make decisions based on those options.
require("config.options")

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- import your plugins
	{ import = "plugins" },
    },
    -- Configure any other settings here.  See the documenation for more details
    -- colorscheme that will be used when install plugins.
    install = { colorscheme = { "kanagawa" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})

-- Ensure keymappings are set after plugins are initialised
require("config.keymaps")

