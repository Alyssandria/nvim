return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup()
		vim.keymap.set("n", "<leader>bn", "<CMD>BufferLineCycleNext<CR>")
		vim.keymap.set("n", "<leader>bp", "<CMD>BufferLineCyclePrev<CR>")
		vim.keymap.set("n", "<leader>bd", "<CMD>bd<CR>")
	end,
}
