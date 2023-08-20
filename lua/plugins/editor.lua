return {
  -- ensure native telescope is installed
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
    opts = {
      pickers = {
        current_buffer_fuzzy_find = {
          -- theme = "cursor",
          sorting_strategy = "ascending",
          layout_config = {
            prompt_position = "top",
          }

        }
      },
    },
    keys = {
      { "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
    }
  },

  {
    "akinsho/toggleterm.nvim",
    opts = {
      direction = "vertical",
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
    },
    keys = {
      {
        "<leader>t",
        function()
          require("toggleterm").toggle()
        end,
        desc = "Toggle terminal",
      },
      {
        mode = { "t", "n" },
        "<C-t>",
        function()
          local count = vim.v.count
          require("toggleterm").toggle(count)
        end,
        desc = "Toggle terminal",
      },
    },
  },
  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
        "toml",
        "rust",
        "zig",
      },
    },
  },
  -- add the context of the current function
  {
    "nvim-treesitter/nvim-treesitter-context",
    cmd = { "TSContextEnable", "TSContextDisable", "TSContextToggle" },
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      line_numbers = true,
    },
    keys = {
      {
        "[c",
        function()
          require("treesitter-context").go_to_context()
        end,
        desc = "Previous context"
      },
    },
    config = function(_, opts)
      require("treesitter-context").setup(opts)
    end,
  }
}
