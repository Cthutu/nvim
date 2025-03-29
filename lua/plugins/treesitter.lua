return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "vimdoc",
                "rust",
                "zig",
                "python",
                "javascript",
                "html",
                "css",
            },
            sync_install = false,
            hightlight = { enable = true },
            indent = { enable = true,  },
            auto_install = true,
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<Enter>",
                    node_incremental = "<Enter>",
                    scope_incremental = "<S-Enter>",
                    node_decremental = "<Backspace>",
                },
            },
        })
    end
}

