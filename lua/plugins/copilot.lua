-- because who doesn't want AI to write their code for them?

local function accept_word()
  local suggestion = vim.fn['copilot#Accept']("")
  local bar = vim.fn['copilot#TextQueuedForInsertion']()
  return vim.fn.split(bar, [[[ .]\zs]])[1]
end

return {
  {
    "github/copilot.vim",
    lazy = true,
    -- enable when entering insert mode
    event = "InsertEnter",
    config = function()
      vim.g.copilot_filetypes = {
        markdown = true,
        gitcommit = true,
      }
    end,
    keys = {
      {
        "<leader>cp",
        "<cmd>Copilot<cr>",
        desc = "Copilot suggestions",
      },
      {
        mode = "i",
        "<C-l>",
        accept_word,
        desc = "Accept Copilot suggestion",
        expr = true,
        remap = false,
      }
    }
  },
}
