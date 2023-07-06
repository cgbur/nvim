return {
    "catppuccin/nvim",
    opts = function()
        return {
            -- term_colors = true,
            -- transparent_background = false,
            styles = {
                comments = {},
                conditionals = {},
                loops = {},
                functions = {},
                keywords = {},
                strings = {},
                variables = {},
                numbers = {},
                booleans = {},
                properties = {},
                types = {},
            },
            color_overrides = {
                mocha = {
                    base = "#000000",
                    mantle = "#111111",
                    crust = "#222222",
                },
            },
        }
    end,
    config = function(_, opts)
        require("catppuccin").setup(opts)
    end
}
