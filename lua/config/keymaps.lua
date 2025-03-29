-- Open Oil with "-"
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory in Oil" })

-- Use "Ctrl+S" to save, but simultaneously leave insert mode
vim.keymap.set("i", "<C-s>", "<esc><cmd>w<CR>", { desc = "Save file and leave insert mode" })
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

-- Hide search higlights
vim.keymap.set("n", "<C-h>", "<cmd>noh<CR>", { desc = "Hide search highlight" })
vim.keymap.set("i", "<C-h>", "<cmd>noh<CR>", { desc = "Hide search highlight" })

-- Diagnostics
vim.keymap.set("n", "gl", function()
    vim.diagnostic.open_float()
end, { desc = "Open diagnostics in a float" })

-- Keep selections
-- vim.keymap.set("n", "<", "<gv", { desc = "Outdent" })
-- vim.keymap.set("n", ">", ">gv", { desc = "Indent" })

-- Text movement
vim.keymap.set("n", "<M-up>", "<cmd>m-2<cr>==", { desc = "Move line up" })
vim.keymap.set("n", "<M-down>", "<cmd>m+<cr>==", { desc = "Move line down" })
vim.keymap.set("i", "<M-up>", "<esc><cmd>m-2<cr>==gi", { desc = "Move line up" })
vim.keymap.set("i", "<M-down>", "<esc><cmd>m +1<cr>==gi", { desc = "Move line down" })
