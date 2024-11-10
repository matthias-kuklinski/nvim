return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "bash",
        "dockerfile",
        "go",
        "gomod",
        "gosum",
        "json",
        "lua",
        "luadoc",
        "nix",
        "query",
        "markdown",
        "markdown_inline",
        "terraform",
        "vimdoc",
        "yaml",
      },

      -- Install parsers synchronously (only applied to `ensure_installed`)
      sync_install = false,

      -- Automatically install missing parsers when entering buffer
      auto_install = true,

      ignore_install = {},

      modules = {},

      highlight = { enable = true },

      indent = { enable = true },
    })
  end,
}
