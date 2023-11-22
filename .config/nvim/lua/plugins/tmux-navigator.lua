local M = {
  "christoomey/vim-tmux-navigator",
  keys = {
    { "<C-h>", "<cmd>TmuxNaviateLeft<CR>", desc = "Navigate Left" },
    { "<C-k>", "<cmd>TmuxNaviateUp<CR>", desc = "Navigate Up" },
    { "<C-j>", "<cmd>TmuxNaviateDown<CR>", desc = "Navigate Down" },
    { "<C-l>", "<cmd>TmuxNaviateRight<CR>", desc = "Navigate Right" },
  },
}

return M
