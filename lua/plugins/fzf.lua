return {
    "ibhagwan/fzf-lua",
    dependencies = {
        -- "nvim-tree/nvim-web-devicons",
        "echasnovski/mini.icons"
    },
    opts = {},
    keys = {
        { "<leader>fF", "<cmd>FzfLua builtin<CR>", desc = "List FZF modes" },
        { "<leader>fh", "<cmd>FzfLua helptags<CR>", desc = "Search in help pages" },
        { "<leader>fk", "<cmd>FzfLua keymaps<CR>", desc = "Search in help pages" },
        { ",", "<cmd>FzfLua files<CR>", desc = "Find files in project directory" },
        {
            "<leader>fc",
            function() require("fzf-lua").files({cwd = vim.fn.stdpath("config")}) end,
            desc = "Find files in configuration"
        },
        { "<leader><leader>", "<cmd>FzfLua buffers<CR>", desc = "Find buffer" },
        { "<leader>fa", "<cmd>FzfLua live_grep<CR>", desc = "Grep in project directory" },
        { "<leader>fgb", "<cmd>FzfLua git_branches<CR>", desc = "Find git branches" },
        { "<leader>fgs", "<cmd>FzfLua git_status<CR>", desc = "Git status" },
        { "<leader>fgB", "<cmd>FzfLua git_blame<CR>", desc = "Git blame" },
        { "<leader>fm", "<cmd>FzfLua manpages<CR>", desc = "Man pages" },
        { "<leader>fw", "<cmd>FzfLua grep_cword<CR>", desc = "Find current word" },
        { "<leader>fW", "<cmd>FzfLua grep_cWORD<CR>", desc = "Find current word" },
        { "<leader>fs", "<cmd>FzfLua spell_suggest<CR>", desc = "Suggest spellings" },
        { "<leader>fd", "<cmd>FzfLua diagnostics_document<CR>", desc = "List diagnostics" },
        { "<leader>fr", "<cmd>FzfLua resume<CR>", desc = "Resume FZF action" },
        { "<leader>fo", "<cmd>FzfLua oldfiles<CR>", desc = "List old files" },
        { "<leader>/", "<cmd>FzfLua lgrep_curbuf<CR>", desc = "Find in current buffer" },
    }
}

