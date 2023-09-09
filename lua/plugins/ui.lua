return {
  -- active indent guide and indent text objects
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = {
        -- Animation rule for scope's first drawing. A function which, given
        -- next and total step numbers, returns wait time (in ms). See
        -- |MiniIndentscope.gen_animation| for builtin options. To disable
        -- animation, use `require('mini.indentscope').gen_animation.none()`.
        --minidoc_replace_start animation = --<function: implements constant 20ms between steps>,
        animation = function(s, n)
          return 2
        end,
      },
    },
  },
  {
    'levouh/tint.nvim',
    event = { "BufReadPost", "BufNewFile" },
    config = function(_, opts)
      require("tint").setup(opts)
    end,
  }
}
