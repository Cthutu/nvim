return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            javascript = { "prettierd", "prettier", stop_after_first = true },
            json = { "prettierd", "prettier" },
            rust = { "rustfmt", lsp_format = "fallback" },
            lua = { "stylua" },
            python = { "black" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
