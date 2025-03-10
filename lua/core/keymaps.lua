vim.keymap.set("n", "<Leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic popup" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
vim.keymap.set("n", "<Leader>q", vim.diagnostic.setloclist, { desc = "Send diagnostics to loclist" })
vim.keymap.set("n", "<Leader>Q", vim.diagnostic.setqflist, { desc = "Send diagnostics to quickfix list" })

