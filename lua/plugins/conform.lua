return {
  "stevearc/conform.nvim",
  opts = {
    notify_on_error = true, -- Notify when a formatter throws an error.
    notify_no_formatters = true, -- Notify when no formatters are available for the buffer.

    -- NOTE: `:help conform-formatters` lists available formatters.
    formatters_by_ft = {
      lua = { "stylua" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback", -- Fall back to LSP formatters if available.
    },
  },
}
