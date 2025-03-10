profile = os.getenv("NVIMPROFILE")

return {
    "williamboman/mason.nvim",
    dependencies = {
	"williamboman/mason-lspconfig.nvim",
    	"neovim/nvim-lspconfig",
    },
    config = function() 
      require("profile." .. profile .. ".lsp")
    end
}
