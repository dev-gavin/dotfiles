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
      messages = {
        enabled = false,
      },
    },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      keywords = {
        TODO = { icon = " ", color = "info" },
        -- HACK = { icon = " ", color = "warning" },
        -- WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
        -- PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
      },
      colors = {
        error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
        -- warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
        warning = { "#FBBF24" },
        -- info = { "DiagnosticInfo", "#2563EB" },
        info = { "#2563EB" },
        -- hint = { "DiagnosticHint", "#10B981" },
        hint = { "#10B981" },
        default = { "Identifier", "#7C3AED" },
        -- test = { "Identifier", "#FF00FF" },
        test = { "#FF00FF" },
      },
      -- TODO: todo
      -- HACK: hack
      -- WARN: warn
      -- PERF: perf
      -- NOTE: note
      -- TEST: test
    },
  },

  { "briones-gabriel/darcula-solid.nvim", dependencies = "rktjmp/lush.nvim" },

  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        close_if_last_window = true,
        position = "float",
      },
    },
  },

  -- {
  --   "nvim-lualine/lualine.nvim",
  --   opts = {
  --     options = {
  --       section_separators = "",
  --       component_separators = "",
  --     },
  --     sections = {
  --       lualine_a = {
  --         {
  --           "buffers",
  --         },
  --       },
  --     },
  --   },
  -- },

  { "Mofiqul/vscode.nvim" },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },
}

return M
