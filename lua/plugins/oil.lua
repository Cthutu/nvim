return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOps
    opts = {},

    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" },

    -- Lazy loading is not recommended because it is very trick to get right
    lazy = false,
}
