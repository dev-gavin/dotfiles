-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- Reset LazyKeymaps
vim.keymap.del("n", "<leader>ww")
vim.keymap.del("n", "<leader>wd")
vim.keymap.del("n", "<leader>w-")
vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>|")
--

vim.keymap.set("n", "n", "nzzzv", { desc = "Better Next" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Better Previous" })

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Better Page Up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Better Page Down" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

vim.keymap.set(
  "n",
  "<leader>sr",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace Current Word" }
)

-- TODO: move this keymap to its own file
vim.keymap.set("n", "<leader>gg", ":G<CR>", { silent = true, desc = "Vim-Fugitive" })

vim.keymap.set("x", "<leader>p", '"_dP')

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set("n", "J", "mzJ`z")
