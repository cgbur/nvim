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
-- toggle term / terminal integration
-- fix the auto inlay hints enabling
-- git integration
-- code action menu
-- leader r n for relative numbers is delayed making rename slow
