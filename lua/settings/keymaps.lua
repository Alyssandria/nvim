-- LEADER KEYS
vim.g.mapleader = " "
vim.g.maplocal = " "

-- COMMANDS
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {silent = true})
vim.keymap.set("n", "<C-w>v", ":vsplit<CR>",{silent = true})

