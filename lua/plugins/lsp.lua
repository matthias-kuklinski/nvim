return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Load capabilities from nvim-cmp for autocompletion
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")

      -- Key mappings for LSP features
      local keymap = vim.keymap
      local api = vim.lsp.buf
      keymap.set("n", "<leader>ii", api.hover, { desc = "Show interface information." })
      keymap.set("n", "<leader>id", api.definition, { desc = "Go to interface definition." })
      keymap.set("n", "<leader>ia", api.code_action, { desc = "Show available code actions." })

      -- Setup lua language server (picked up automatically from PATH)
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        cmd = { "lua-language-server" },
        filetypes = { "lua" },
        settings = {
          Lua = {
            runtime = {
              version = "LuaJIT",
            },
            diagnostics = {
              globals = { "vim" }, -- Recognize 'vim' as a global variable.
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("lua", true), -- Make Neovim runtime files available
              checkThirdParty = false,
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })
    end,
  },
}
