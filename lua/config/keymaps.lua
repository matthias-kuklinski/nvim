local keymap = vim.keymap

-- Splits/Windows
keymap.set("n", "<C-h>", "<C-w>h", { silent = true, desc = "Move to left window." })
keymap.set("n", "<C-j>", "<C-w>j", { silent = true, desc = "Move to below window." })
keymap.set("n", "<C-k>", "<C-w>k", { silent = true, desc = "Move to above window." })
keymap.set("n", "<C-l>", "<C-w>l", { silent = true, desc = "Move to right window." })

-- Clear highlights
keymap.set("n", "<Esc>", "<cmd>noh<CR>", { noremap = true, silent = true, desc = "Clear highlights." })

-- Toggle comments
keymap.set("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
keymap.set("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })
