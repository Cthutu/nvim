-- Open Oil with "-"
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory in Oil" })

-- Use "Ctrl+S" to save, but simultaneously leave insert mode
vim.keymap.set("i", "<C-s>", "<esc><cmd>w<CR>", { desc = "Save file and leave insert mode" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", {desc = "Save file" })

-- Hide search higlights
vim.keymap.set("n", "<C-h>", "<cmd>noh<CR>", { desc = "Hide search highlight" })
vim.keymap.set("i", "<C-h>", "<cmd>noh<CR>", { desc = "Hide search highlight" })

-- Diagnostics
vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end,
    { desc = "Open diagnostics in a float" }
)

