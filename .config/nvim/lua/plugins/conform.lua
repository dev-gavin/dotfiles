local M = {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- javascript = { "prettier" },
      -- json = { "prettier" },
      -- html = { "prettier" },
      -- css = { "prettier" },
      markdown = { "markdownlint" },
    },
  },
}

return M
