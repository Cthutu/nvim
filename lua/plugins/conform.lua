return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            rust = { "rustfmt", lsp_format = "fallback" }
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        }
    }
}

