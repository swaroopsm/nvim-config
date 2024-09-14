return {
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      local telescope_actions = require("telescope.actions")

      return {
        defaults = {
          mappings = {
            i = {
              ["<c-j>"] = telescope_actions.toggle_selection + telescope_actions.move_selection_better,
              ["<c-k>"] = telescope_actions.toggle_selection + telescope_actions.move_selection_worse,
            },
          },
        },
      }
    end,
  },
}
