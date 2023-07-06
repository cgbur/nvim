-- autocomplete for command line

return {
    'gelguy/wilder.nvim',
    -- keys should be : ? /
    event = { "CmdlineEnter" },
    config = function(_, opts)
        local wilder = require('wilder')
        wilder.setup({ modes = { ':', '/', '?' } })
        wilder.set_option('renderer', wilder.wildmenu_renderer({
            highlighter = wilder.basic_highlighter(),
            separator = ' · ',
            left = { ' ', wilder.wildmenu_spinner(), ' ' },
            right = { ' ', wilder.wildmenu_index() },
        }))
    end,
}
