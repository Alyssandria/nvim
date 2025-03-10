local M = {}

-- Function to simplify key mappings
M.set_keymaps = function(bufnr) local function buf_set_keymap(mode, lhs, rhs, desc)
    vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr, desc = desc })
  end

  -- LSP keymaps
  buf_set_keymap("n", "gd", vim.lsp.buf.definition, "Go to Definition")
  buf_set_keymap("n", "gD", vim.lsp.buf.declaration, "Go to Declaration")
  buf_set_keymap("n", "gi", vim.lsp.buf.implementation, "Go to Implementation")
  buf_set_keymap("n", "gr", vim.lsp.buf.references, "Go to References")
  buf_set_keymap("n", "K", vim.lsp.buf.hover, "Show Hover Information")
  buf_set_keymap("n", "<Leader>rn", vim.lsp.buf.rename, "Rename Symbol")
  buf_set_keymap("n", "<Leader>ca", vim.lsp.buf.code_action, "Show Code Actions")

  -- Diagnostic keymaps
  buf_set_keymap("n", "[d", vim.diagnostic.goto_prev, "Previous Diagnostic")
  buf_set_keymap("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")
  buf_set_keymap("n", "<Leader>e", vim.diagnostic.open_float, "Show Diagnostics Popup")
end

-- `on_attach` function
M.on_attach = function(client, bufnr)
  M.set_keymaps(bufnr)

  -- Format on Save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ async = false })
      end,
    })
  end
end

return M

