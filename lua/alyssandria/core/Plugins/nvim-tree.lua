return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = { "NvimTreeToggle", "NvimTreeFocus" },
	keys = {
		{ "<leader>e", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
		{ "<leader>o", "<cmd>NvimTreeFocus<CR>", desc = "Focus NvimTree" },
	},
	config = function()
		require("nvim-tree").setup({
			disable_netrw = true,
			hijack_netrw = true,
			open_on_tab = false,
			hijack_cursor = true,
			update_cwd = true,
			view = {
				width = 35,
				side = "right",
				preserve_window_proportions = true,
			},
			renderer = {
				highlight_git = true,
				icons = {
					glyphs = {
						default = "",
						symlink = "",
						folder = {
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
						},
						git = {
							unstaged = "✗",
							staged = "✓",
							unmerged = "",
							renamed = "➜",
							untracked = "★",
							deleted = "",
							ignored = "◌",
						},
					},
				},
			},
			filters = {
				dotfiles = false,
				custom = { "^.git$" },
			},
			git = {
				enable = true,
				ignore = false,
				timeout = 200,
			},
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
		})
	end,
}
