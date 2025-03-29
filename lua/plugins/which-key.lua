return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        -- Your configuration comes here,
        -- or leave it empty to use the default settings.
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer local keymaps (which-key)",
        },
    },
}

