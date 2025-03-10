local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason.setup()

mason_lspconfig.setup({
  ensure_installed = {"lua_ls"}
})

require("mason-lspconfig").setup_handlers({
function (server_name)
    lspconfig[server_name].setup({
      capabilities = capabilities
    })
end,
}
)





