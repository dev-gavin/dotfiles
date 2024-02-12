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
      desc = "Harpoon Add",
    },
    {
      "<leader>v",
      function()
        require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
      end,
      desc = "Toggle Harpoon List",
    },
    {
      "<leader>m",
      function()
        require("harpoon"):list():select(1)
      end,
      desc = "Harpoon 1",
    },
    {
      "<leader>,",
      function()
        require("harpoon"):list():select(2)
      end,
      desc = "Harpoon 2",
    },
    {
      "<leader>.",
      function()
        require("harpoon"):list():select(3)
      end,
      desc = "Harpoon 3",
    },
    {
      "<leader>/",
      function()
        require("harpoon"):list():select(4)
      end,
      desc = "Harpoon 4",
    },
  },
}

return M
