return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({})

    local keymap = vim.keymap
    local api = require("nvim-tree.api")

    keymap.set(
      "n",
      "<leader>et",
      function()
        api.tree.toggle({
          find_file = false,
          focus = true,
        })
      end,
      { silent = true, desc = "Toggle the nvim-tree sidebar." }
    )

    keymap.set(
      "n",
      "<leader>ef",
      function()
        api.tree.open({
          find_file = true,
          focus = true,
        })
      end,
      { silent = true, desc = "Open the nvim-tree sidebar and navigate to the file of the current buffer." }
    )
  end,
}
