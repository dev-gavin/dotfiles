local M = {
  "nvim-telescope/telescope.nvim",
  keys = function()
    return {

      {
        "<leader>sp",
        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,
        desc = "Find Plugin File",
      },
      { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Search for file" },
      { "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Grep (root dir)" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
      { "<leader>sm", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
      { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
      { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
      { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
      { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
      { "<leader>uC", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme with preview" },
      { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
    }
  end,
    -- add a keymap to browse plugin files
    -- stylua: ignore
    --   {
    --     "<leader>,",
    --     "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
    --     desc = "Switch Buffer",
    --   },
    --   { "<leader>/", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    --   { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
    --   { "<leader><space>", Util.telescope("files"), desc = "Find Files (root dir)" },
    --   -- find
    --   { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
    --   { "<leader>fc", Util.telescope.config_files(), desc = "Find Config File" },
    --   { "<leader>ff", Util.telescope("files"), desc = "Find Files (root dir)" },
    --   { "<leader>fF", Util.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
    --   { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
    --   { "<leader>fR", Util.telescope("oldfiles", { cwd = vim.loop.cwd() }), desc = "Recent (cwd)" },
    --   -- git
    --   { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "commits" },
    --   { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "status" },
    --   -- search
    --   { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
    --   { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
    --   { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
    --   { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
    --   { "<leader>sG", Util.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
    --   { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
    --   { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
    --   { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
    --   { "<leader>sw", Util.telescope("grep_string", { word_match = "-w" }), desc = "Word (root dir)" },
    --   { "<leader>sW", Util.telescope("grep_string", { cwd = false, word_match = "-w" }), desc = "Word (cwd)" },
    --   { "<leader>sw", Util.telescope("grep_string"), mode = "v", desc = "Selection (root dir)" },
    --   { "<leader>sW", Util.telescope("grep_string", { cwd = false }), mode = "v", desc = "Selection (cwd)" },
    --   { "<leader>uC", Util.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with preview" },
    --   {
    --     "<leader>ss",
    --     function()
    --       require("telescope.builtin").lsp_document_symbols({
    --         symbols = require("lazyvim.config").get_kind_filter(),
    --       })
    --     end,
    --     desc = "Goto Symbol",
    --   },
    --   {
    --     "<leader>sS",
    --     function()
    --       require("telescope.builtin").lsp_dynamic_workspace_symbols({
    --         symbols = require("lazyvim.config").get_kind_filter(),
    --       })
    --     end,
    --     desc = "Goto Symbol (Workspace)",
    --   },
    -- }
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<CR>"] = require("telescope.actions").select_default + require("telescope.actions").center,
        },
      },
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
    pickers = {
      colorscheme = {
        enable_preview = true,
        test = "everforest"
      },
    },
  },
}

return M
