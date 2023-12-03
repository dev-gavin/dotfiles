local M = {
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "notify",
            find = "No information available",
          },
          opts = { skip = true },
        },
      },
      views = {
        cmdline_popup = {
          border = {
            style = "none",
            padding = { 1, 2 },
          },
          filter_options = {},
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = {
        TODO = { icon = " ", color = "info" },
        HACK = { icon = " ", color = "warning" },
        WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        info = { "#e69333", "DiagnosticInfo" },
        hint = { "DiagnosticHint", "#10B981" },
        default = { "Identifier", "#7C3AED" },
        test = { "Identifier", "#FF00FF" },
      },
      -- TODO: todo
      -- HACK: hack
      -- WARN: warn
      -- PERF: perf
      -- NOTE: note
      -- TEST: test
    },
  },

  -- {
  --   "neanias/everforest-nvim",
  --   version = false,
  --   lazy = false,
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   -- Optional; default configuration will be used if setup isn't called.
  --   config = function()
  --     require("everforest").setup({
  --       -- Your config here
  --     })
  --   end,
  -- },

  -- {
  --   "nvim-lualine/lualine.nvim",
  -- event = "VeryLazy",
  -- opts = function()
  --   return {
  --     --[[add your custom lualine config here]]
  --     theme = "everforest",
  --   }
  -- end,
  -- },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "moon",
      transparent = false,
    },
  },

  -- { "EdenEast/nightfox.nvim" },
  --
  -- {
  --   "sainnhe/gruvbox-material",
  --   config = function()
  --     vim.g.gruvbox_material_background = "hard"
  --     vim.g.gruvbox_material_better_performance = 1
  --   end,
  -- },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "solarized-osaka",
    },
  },
}

return M
