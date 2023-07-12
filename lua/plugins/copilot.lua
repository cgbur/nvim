-- because who doesn't want AI to write their code for them?
return {
    "github/copilot.vim",
    lazy = true,
    -- enable when entering insert mode
    event = "InsertEnter",
    config = function()
        vim.g.copilot_filetypes = {
            markdown = true,
        }
    end,
    keys = {
        {
            "<leader>cp",
            "<cmd>Copilot<cr>",
            desc = "Copilot suggestions",
        }
    }
}
