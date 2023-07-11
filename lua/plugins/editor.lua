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
    },

    {
        'akinsho/toggleterm.nvim',
        opts = {
            direction = 'vertical',
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
            }
        },
    }
}
