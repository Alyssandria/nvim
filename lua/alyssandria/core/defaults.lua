local opt = vim.opt

vim.g.mapleader = " "
vim.g.have_nerd_font = true

opt.number = true                      -- Show line numbers
opt.relativenumber = true              -- Relative line numbers for easy jumps
opt.mouse = "a"                        -- Enable mouse in all modes
opt.clipboard = "unnamedplus"          -- Use system clipboard
opt.scrolloff = 8                      -- Keep 8 lines visible above and below cursor
opt.splitright = true                  -- Vertical splits open on the right
opt.splitbelow = true                  -- Horizontal splits open below
opt.ignorecase = true                  -- Case-insensitive searching
opt.smartcase = true                   -- Case-sensitive if uppercase letters used in search
opt.hlsearch = true                    -- Highlight search results
opt.incsearch = true                   -- Incremental search while typing
opt.termguicolors = true               -- Enable true color support
opt.updatetime = 300                   -- Faster completion and CursorHold events
opt.signcolumn = "yes"                 -- Always show sign column to avoid text shifting
opt.cmdheight = 1                      -- Height of the command line
opt.hidden = true                      -- Allow switching buffers without saving
opt.wrap = false                       -- Disable line wrap for code clarity
opt.expandtab = true                   -- Use spaces instead of tabs
opt.shiftwidth = 2                     -- Number of spaces per indentation level
opt.tabstop = 2                        -- Number of spaces in a tab
opt.smartindent = true                 -- Smart autoindenting
opt.autoindent = true                  -- Maintain indent of current line

-- highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function() vim.highlight.on_yank({ timeout = 200 }) end,
})

