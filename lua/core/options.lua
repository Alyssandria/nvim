-- GENERAL
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Relative line numbers for quick movement
vim.opt.cursorline = true       -- Highlight the current line
vim.opt.scrolloff = 8           -- Keep 8 lines above/below the cursor when scrolling
vim.opt.sidescrolloff = 8       -- Keep 8 columns left/right when scrolling
vim.opt.mouse = "a"             -- Enable mouse support
vim.opt.updatetime = 300        -- Faster update time for CursorHold events
vim.g.mapleader = " "

-- INDENTATION
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.shiftwidth = 2          -- Indentation width for each level
vim.opt.tabstop = 2             -- Tab character width
vim.opt.softtabstop = 2         -- Makes backspace delete in tab-sized chunks
vim.opt.autoindent = true       -- Copy indentation from the previous line
vim.opt.smartindent = true      -- Smart indentation for new lines
vim.opt.wrap = false            -- Disable line wrapping

-- SEARCHING
vim.opt.ignorecase = true       -- Case-insensitive searching
vim.opt.smartcase = true        -- Case-sensitive if uppercase is used
vim.opt.incsearch = true        -- Show matches while typing
vim.opt.hlsearch = false        -- Disable search highlighting after searching

-- SPLITS
vim.opt.splitbelow = true       -- Open new splits below
vim.opt.splitright = true       -- Open new vertical splits to the right
vim.opt.equalalways = false     -- Keep split sizes when opening/closing windows

-- FILE HANDLING
vim.opt.swapfile = false        -- Disable swap files
vim.opt.backup = false          -- Disable backup files
vim.opt.undofile = true         -- Enable persistent undo history
vim.opt.hidden = true           -- Allows switching buffers without saving

-- CLIPBOARD
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard


