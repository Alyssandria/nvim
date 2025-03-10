-- TELESCOPE
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- OIL
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })


-- BUFFERLINE
vim.keymap.set("n", "<Leader>bn", "<Cmd>BufferLineCycleNext<CR>", { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<Leader>bp", "<Cmd>BufferLineCyclePrev<CR>", { silent = true, desc = "Previous buffer" })
vim.keymap.set("n", "<Leader>bd", "<Cmd>bd<CR>", { silent = true, desc = "Close buffer" })

-- TOGGLETERM
vim.keymap.set("n", "<Leader>th", function()
  require("toggleterm").toggle(1, 15, nil, "horizontal") -- First terminal
  require("toggleterm").toggle(2, 15, nil, "horizontal") -- Second terminal
end, { silent = true, desc = "Open two horizontal (stacked) terminals" })
