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
          position = {
            row = "15%",
          },
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
      notify = {
        replace = true,
      },
      -- messages = {
      --   enabled = false,
      --   view = "mini",
      -- },
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

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        close_if_last_window = true,
        position = "current",
      },
    },
    keys = {
      { "<leader>e", "<cmd>Neotree<CR>" },
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        section_separators = "",
        component_separators = "",
      },
      sections = {
        lualine_a = {
          {
            "buffers",
          },
        },
      },
    },
  },

  { "akinsho/bufferline.nvim", enabled = false },

  { "gruvbox-community/gruvbox", event = "VeryLazy" },
  { "EdenEast/nightfox.nvim", event = "VeryLazy" },

  {
    "neanias/everforest-nvim",
    version = false,
    event = "VeryLazy",
    config = function()
      require("everforest").setup({
        -- Your config here
      })
    end,
  },
  {
    "bluz71/vim-nightfly-colors",
    lazy = false,
    config = function()
      vim.g.nightflyVirtualTextColor = true
    end,
    priority = 1000,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     style = "night",
  --     transparent = false,
  --   },
  -- },

  --
  -- {
  --   "sainnhe/gruvbox-material",
  --   config = function()
  --     vim.g.gruvbox_material_background = "hard"
  --     vim.g.gruvbox_material_better_performance = 1
  --   end,
  -- },
}

return M
