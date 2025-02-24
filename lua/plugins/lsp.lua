return {
  "neovim/nvim-lspconfig", -- Core LSP plugin
  dependencies = {
    "williamboman/mason.nvim",           -- LSP installer
    "williamboman/mason-lspconfig.nvim", -- Bridge for Mason and LSPConfig
    "hrsh7th/cmp-nvim-lsp",              -- LSP autocompletion support
  },
  config = function()
    require("settings.lsp")
  end,
}

