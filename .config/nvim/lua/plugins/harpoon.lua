local M = {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  keys = {
    {
      "<leader>a",
      function()
        require("harpoon"):list():append()
      end,
    },
    {
      "<leader>v",
      function()
        require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
      end,
    },
    {
      "<leader>m",
      function()
        require("harpoon"):list():select(1)
      end,
    },
    {
      "<leader>,",
      function()
        require("harpoon"):list():select(2)
      end,
    },
    {
      "<leader>.",
      function()
        require("harpoon"):list():select(3)
      end,
    },
    {
      "<leader>/",
      function()
        require("harpoon"):list():select(4)
      end,
    },
  },
}

return M
