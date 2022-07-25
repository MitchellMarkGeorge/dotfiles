local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- exit insert mode
keymap("i", "jk", "<Esc>", opts)
keymap("i", "kj", "<Esc>", opts)
keymap("i", "jj", "<Esc>", opts)

-- adds trailing ; to end of line
keymap("i", ";;", "<Esc>A;<Esc>", opts)

-- window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- resize with arrows
keymap("n", "<S-Up>", ":resize -2<cr>", opts)
keymap("n", "<S-Down>", ":resize +2<cr>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<cr>", opts)

-- next buffer
keymap("n", "<S-l>", " :BufferLineCycleNext<CR>", opts)
-- previous buffer
keymap("n", "<S-h>", " :BufferLineCyclePrev<CR>", opts)

keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)

keymap("n", "<leader>xx", ":TroubleToggle<cr>", opts)
keymap("n", "<leader>xd", ":TroubleToggle document_diagnostics<cr>", opts)

-- toggle file tree
keymap("n", "<leader>tt", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>tr", ":NvimTreeRefresh<cr>", opts)

keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)

-- remove hilighting
keymap("n", "<leader>h", ":noh<cr>", opts)
-- save file if updated
keymap("n", "<leader>s", ":update<cr>", opts)

-- move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Move text up and down in visual mode
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- format code
keymap("n", "<leader>p", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)