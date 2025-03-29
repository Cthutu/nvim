function table_merge(base, new)
    for k, v in pairs(new) do
        base[k] = new[k]
    end
    return base
end

new_opts = {
    -- Indentation control
    expandtab = true,       -- Convert tabs to spaces
    shiftwidth = 4,         -- Amount to ident with << and >>
    tabstop = 4,            -- How many spaces are shown per tab
    softtabstop = 4,        -- How many spaces are applied when pressing Tab
    smarttab = true,
    smartindent = true,
    autoindent = true,      -- Keep indentation from previous line
    breakindent = true,     -- Wrapped lines will keep their indentation

    -- Line numbers
    number = true,          -- Always show line numbers
    relativenumber = true,  -- Show relative line numbers
    cursorline = true,      -- Show line under cursor
    -- cursorcolumn = true,

    -- Undo
    undofile = true,        -- Store undos between sessions

    -- Mouse support
    mouse = "a",            -- Enable mouse (for splits support)

    -- Don't show the mode (as we already use it mini.statusline)
    showmode = false,

    -- Case sensitivity
    ignorecase = true,      -- By default, ignore case
    smartcase = true,       -- Use case sensitivity if a caps is in the search term

    -- Sign column always (can show warning flags etc).
    signcolumn = "yes",

    -- Splits control
    splitright = true,      -- Vertical splits appear on the right
    splitbelow = true,      -- Horizontal splits appear below

    -- Whitespace visibility
    list = true,
    listchars = {
        tab = "» ",
        trail = "·",
        nbsp = "˽"
    },

    -- Presentation control
    scrolloff = 10,         -- Number of lines to keep above and below the cursor.
    --cmdheight = 0,          -- Disable command line, giving us an extra line.
}

vim.opt = table_merge(vim.opt, new_opts)

-- Highlight text for some time after yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("YankHighlight", {
        clear = true
    }),
    pattern = "*",
    callback = function()
        vim.highlight.on_yank()
    end,
    desc = "Highlight yank",
})

vim.g.have_nerd_font = true

