-- settings/lsp.lua

local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

-- Enable Mason (LSP Installer)
mason.setup()
mason_lspconfig.setup({
  ensure_installed = { "lua_ls", "ts_ls", "html", "cssls" }, -- Install these servers
})

-- Common on_attach function (Keymaps for LSP)
local function on_attach(client, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  local keymap = vim.keymap.set

  keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts) -- Go to definition
  keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts) -- Show references
  keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts) -- Hover
  keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts) -- Rename symbol
  keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts) -- Code action
end

-- Setup LSP servers
mason_lspconfig.setup_handlers({
  function(server_name)
    lspconfig[server_name].setup({
      on_attach = on_attach,
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })
  end,
})

