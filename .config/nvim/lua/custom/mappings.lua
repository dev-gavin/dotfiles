---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- TmuxNavigator
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

    -- Better page up and down
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },

    ["n"] = { "nzzzv" },
    ["N"] = { "Nzzzv" },

    ["<leader>to"] = { "<cmd>Outline<CR>", "toggle outline" },
  },

  v = {
    -- indenting
    [">"] = { ">gv", "indent" },
    ["<"] = { "<gv", "indent" },

    ["J"] = { ":m '>+1<CR>gv=gv", "move line up" },
    ["K"] = { ":m '<-2<CR>gv=gv", "move line up" },
  },
}

-- more keybinds!

return M
