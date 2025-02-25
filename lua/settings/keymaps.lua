-- LEADER KEYS
vim.g.mapleader = " "
vim.g.maplocal = " "

-- COMMANDS
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", {noremap = true, silent = true, desc = "Live grep"})
vim.keymap.set("n", "<leader>9", ":w<CR>:!gcc -o %:r % && %:r.exe<CR>", {noremap = true, silent = true})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", {silent = true})
vim.keymap.set("n", "<C-w>v", ":vsplit<CR>",{silent = true})

