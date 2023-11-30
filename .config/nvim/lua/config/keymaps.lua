-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "n", "nzzzv", { desc = "Better Next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Better Previous" })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Better Page Up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Better Page Down" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

vim.keymap.set("n", "<leader>gg", ":G<CR>", { silent = true, desc = "Vim-Fugitive" })

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
