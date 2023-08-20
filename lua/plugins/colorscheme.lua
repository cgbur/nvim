return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- opts = {
    --   term_colors = true,
    --   transparent_background = false,
    --   styles = {
    --     comments = {},
    --     conditionals = {},
    --     loops = {},
    --     functions = {},
    --     keywords = {},
    --     strings = {},
    --     variables = {},
    --     numbers = {},
    --     booleans = {},
    --     properties = {},
    --     types = {},
    --   },
    --   color_overrides = {
    --     mocha = {
    --       base = "#000000",
    --       mantle = "#000000",
    --       crust = "#000000",
    --     },
    --   },
    -- },
  },
  { 'projekt0n/github-nvim-theme' },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_high_contrast",
    },
  }
}
