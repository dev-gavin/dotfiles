local M = {
  -- "kristijanhusak/vim-dadbod-ui",
  -- dependencies = {
  --   { "tpope/vim-dadbod" },
  --   { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql", "sqlite" } },
  -- },
  keys = {
    { "<F8>", "<cmd>DBUIToggle<CR>", desc = "Toggle DB UI" },
  },
  -- cmd = {
  --   "DBUI",
  --   "DBUIToggle",
  --   "DBUIAddConnection",
  --   "DBUIFindBuffer",
  -- },
  "tpope/vim-dadbod",
  config = function()
    local function db_completion()
      require("cmp").setup.buffer({ sources = { { name = "vim-dadbod-completion" } } })
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "sql",
      },
      command = [[setlocal omnifunc=vim_dadbod_completion#omni]],
    })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "sql",
        "mysql",
        "plsql",
      },
      callback = function()
        vim.schedule(db_completion)
      end,
    })
  end,
  cmd = { "DBUIToggle", "DBUI", "DBUIAddConnection", "DBUIFindBuffer", "DBUIRenameBuffer", "DBUILastQueryInfo" },
  dependencies = {
    "kristijanhusak/vim-dadbod-ui",
    "kristijanhusak/vim-dadbod-completion",
  },

  init = function()
    -- Your DBUI configuration
    -- vim.g.db_ui_save_location = vim.fn.stdpath("config") .. require("plenary.path").path.sep .. "db_ui"
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_auto_execute_table_helpers = 1
    vim.g.db_ui_win_position = "right"
    vim.g.db_ui_table_helpers = {
      sqlite = {
        Attributes = "PRAGMA table_info({table})",
      },
    }
  end,
}

return M
