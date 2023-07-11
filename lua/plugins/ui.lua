return {
    -- active indent guide and indent text objects
    {
        "echasnovski/mini.indentscope",
        opts = {

            draw = {
                -- Delay (in ms) between event and start of drawing scope indicator
                delay = 20,

                -- Animation rule for scope's first drawing. A function which, given
                -- next and total step numbers, returns wait time (in ms). See
                -- |MiniIndentscope.gen_animation| for builtin options. To disable
                -- animation, use `require('mini.indentscope').gen_animation.none()`.
                --minidoc_replace_start animation = --<function: implements constant 20ms between steps>,
                animation = function(s, n) return 2 end,
                --minidoc_replace_end

                -- Symbol priority. Increase to display on top of more symbols.
                priority = 2,
            },
        },
    },
}
