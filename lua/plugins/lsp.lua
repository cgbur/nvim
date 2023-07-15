return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        zls = {
          mason = false,
        },
        rust_analyzer = {
          mason = false,
        },
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function()
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
        sources = {
          nls.builtins.formatting.mdformat,
        },
      }
    end,
  },
}
