return {
    'willothy/moveline.nvim',
    build = 'make',
    lazy = false,
    keys = {
        {
            "<M-k>",
            "<cmd> lua require('moveline').up()<CR>",
            desc = "Move line up",
        },
        {
            "<M-j>",
            "<cmd> lua require('moveline').down()<CR>",
            desc = "Move line down",
        },
        {
            "<M-k>",
            mode = "v",
            "<cmd> lua require('moveline').block_up()<CR>",
            desc = "Move block up",
        },
        {
            "<M-j>",
            mode = "v",
            "<cmd> lua require('moveline').block_down()<CR>",
            desc = "Move block down",
        },
    }
}
