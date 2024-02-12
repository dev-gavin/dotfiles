return {
  "andrewferrier/debugprint.nvim",
  -- Dependency only needed for NeoVim 0.8
  opts = {
    create_keymaps = false,
    create_commands = false,
    display_counter = false,
  },
  keys = {
    {
      "<Leader>ld",
      function()
        return require("debugprint").debugprint()
      end,
      mode = { "n", "v" },
      desc = "Debug Logger",
      expr = true,
    },
    {
      "<Leader>lv",
      function()
        return require("debugprint").debugprint({ variable = true })
      end,
      mode = { "n", "v" },
      desc = "Debug Variable Logger",
      expr = true,
    },
    {
      "<Leader>lx",
      function()
        return require("debugprint").deleteprints()
      end,
      mode = { "n", "v" },
      desc = "DELETE All Loggers",
      expr = true,
    },
  },
}
