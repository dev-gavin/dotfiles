local M = {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      tsserver = {
        settings = {
          implicitProjectConfiguration = {
            checkJs = true,
          },
        },
      },
    },
  },
}

return M
