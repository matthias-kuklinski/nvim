return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          prompt_prefix = " ",
          selection_caret = " ",
          entry_prefix = " ",
          layout_config = {
            prompt_position = "top",
          },
          sorting_strategy = "ascending",
        },
      })

      local keymap = vim.keymap
      local api = require("telescope.builtin")
      keymap.set("n", "<leader>ff", api.find_files, { silent = true, desc = "Find files." })
      keymap.set("n", "<leader>fs", api.grep_string, { silent = true, desc = "Find selected text (grep)." })
    end,
  },
}
