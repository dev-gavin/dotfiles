local M = {
  {
    "tpope/vim-fugitive",
    cmd = { "G" },
  },
  {
    "tpope/vim-rhubarb",
    keys = {
      { "<leader>gb", "<cmd>GBrowse<CR>", desc = "Open Github URL" },
    },
  },
}
return M
