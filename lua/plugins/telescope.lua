local plugin = {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
        "nvim-tree/nvim-web-devicons",
    },
    cmd = "Telescope",
    init = function()
        require("config.utils").load_mapping "telescope"
    end,
    opts = function()
        local actions = require("telescope.actions")
        local trouble = require("trouble.providers.telescope")
        local telescope = require("telescope")

        return {
            pickers = {
                current_buffer_fuzzy_find = {
                    -- theme = "cursor",
                    sorting_strategy = "ascending",
                    layout_config = {
                        prompt_position = "top",
                    }

                }
            },
            defaults = {
                mappings = {
                    i = { ["<c-t>"] = trouble.open_with_trouble },
                    n = { ["<c-t>"] = trouble.open_with_trouble },
                },
            },
        }
    end,
    config = function(_, opts)
        require("telescope").setup(opts)
        require('telescope').load_extension('fzf')
    end,
}

return plugin
