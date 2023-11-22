-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "n", "nzzzv", { desc = "Better Next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Better Previous" })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Better Page Up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Better Page Down" })

vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR>", { desc = "Close Buffer" })
