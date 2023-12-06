local M = {
  "nvim-pack/nvim-spectre",
  keys = function()
    return {
      {

        "<leader>sR",
        function()
          require("spectre").open()
        end,
        desc = "Replace in files (Spectre)",
      },
    }
  end,
}
-- keys = function()
-- end,

return M
