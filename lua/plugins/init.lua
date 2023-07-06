return {
    "nvim-lua/plenary.nvim",
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufReadPost", "BufNewFile" },
    },
    {
        "folke/which-key.nvim",
        keys = { "<leader>", '"', "'", "`", "c", "v", "g" },
        config = function(_, opts)
            require("which-key").setup(opts)
        end
    },


    -- {
    --     "NvChad/nvim-colorizer.lua",
    --     config = function(_, opts)
    --         require("colorizer").setup(opts)
    --     end,
    -- },


}

-- TODOS --
-----------
-- null-ls
-- toggle term
-- fix the auto inlay hints enabling
