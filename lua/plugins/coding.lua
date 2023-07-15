return {
  -- snippets
  {
    "L3MON4D3/LuaSnip",
    keys = {
      {
        "<tab>",
        vim.NIL, --so copilot works
        expr = true,
        silent = true,
        mode = "i",
      },
    },
  },

  -- disable the text completions, mostly just annoying
  {
    "hrsh7th/cmp-buffer",
    enabled = false,
  }
}
