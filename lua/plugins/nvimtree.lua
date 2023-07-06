return {
    "nvim-tree/nvim-tree.lua",
    init = function()
        require("config.utils").load_mapping "nvimtree"
    end,
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function(_, opts)
        require("nvim-tree").setup(opts)
    end,
}
