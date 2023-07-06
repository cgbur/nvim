return {
    "numToStr/Comment.nvim",
    lazy = true,
    init = function()
        require("config.utils").load_mapping "comment"
    end,
    config = function(_, opts)
        require("Comment").setup(opts)
    end,
}
