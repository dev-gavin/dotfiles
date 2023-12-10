local M = {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod" },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql", "sqlite" } },
  },
  keys = {
    { "<F8>", "<cmd>DBUIToggle<CR>", desc = "Toggle DB UI" },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  init = function()
    -- Your DBUI configuration
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
