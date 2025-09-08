-- [[ Basic Keymaps ]]
local keymap = vim.keymap.set

keymap("n", "+", [[<cmd>vertical resize +4<cr>]], { desc = "Increase window width" })
keymap("n", "_", [[<cmd>vertical resize -4<cr>]], { desc = "Decrease window width" })
keymap("n", "-", [[<cmd>horizontal resize -1<cr>]], { desc = "Decrease window height" })
keymap("n", "=", [[<cmd>horizontal resize +1<cr>]], { desc = "Increase window height" })

-- Clear highlights on search when pressing <Esc> in normal mode
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlights" })

-- Diagnostics
keymap("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror" })

-- Terminal
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Window navigation
keymap("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
keymap("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
keymap("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
keymap("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
