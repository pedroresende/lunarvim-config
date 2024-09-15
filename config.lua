-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.plugins = {
  { 'wakatime/vim-wakatime', lazy = false },
  {
    "supermaven-inc/supermaven-nvim",
    config = true
  },
  {
    "dinhhuy258/vim-local-history"
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
    priority = 1000
  },
    {
    "onsails/lspkind.nvim",
    lazy = false,
    priority = 1000
  }
}

lvim.colorscheme = "nord"

lvim.transparent_window = true

-- Folding
vim.api.nvim_set_option("foldmethod", "indent")
vim.api.nvim_set_option("foldlevel", 99)

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  { command = "eslint", filetypes = { "typescript", "typescriptreact" } }
}

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    command = "prettier",
    filetypes = { "typescript", "typescriptreact" },
  },
}
