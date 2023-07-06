return {
    'filipdutescu/renamer.nvim',
    lazy = true,
    init = function()
        require("config.utils").load_mapping "renamer"
    end,
    config = function()
        require('renamer').setup()
    end
}
