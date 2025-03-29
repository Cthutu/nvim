return {
    "saghen/blink.cmp",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "moyiz/blink-emoji.nvim",
        "fang2hou/blink-copilot",
    },
    version = "1.*",

    --@module 'blink.cmp'
    --@type blink.cmp.Config
    opts = {
        keymap = { preset = "enter" },
        appearance = {
            nerd_font_variant = "normal",
        },
        completion = { documentation = { auto_show = true } },
        sources = {
            providers = {
                emoji = {
                    module = "blink-emoji",
                    name = "Emoji",
                    score_offset = 15,
                    opts = { insert = true },
                    should_show_items = function()
                        return vim.tbl_contains(
                            -- Enable emoji completion only for git commits and markdown
                            -- By default, enabled for all file-types.
                            { "git-commit", "markdown", "rust" },
                            vim.o.filetype
                        )
                    end,
                },
                copilot = {
                    name = "copilot",
                    module = "blink-copilot",
                    score_offset = 100,
                    async = true,
                },
            },
            default = { "lsp", "path", "copilot", "snippets", "buffer", "emoji" },
        },
        fuzzy = { implementation = "prefer_rust_with_warning" },
        signature = { enabled = true },
    },

    opts_extend = { "sources.default" },
}
