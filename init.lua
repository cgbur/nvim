-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- TODO:
-- Better terminals
-- custom telescope and lsp config
-- better colors
-- copilot statusline symbol

-- Nice auto commands to add

-- Run Zig Build on save of zig files
-- augroup zigbuild | exe "au BufWritePost *.zig TermExec cmd='zig build'" | augroup end
