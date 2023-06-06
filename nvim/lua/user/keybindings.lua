-- Keybindings

-- remap options
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- map leaders
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- remapping wrapper
local keymap = vim.api.nvim_set_keymap

-- Faster way to exit from insert and visual mode
keymap("i", "<localleader><leader>", "<ESC>", opts)
keymap("v", "<localleader><leader>", "<ESC>", opts)

-- jump to end of line in insert mode
keymap("i", "<C-e>", "<ESC>A", opts)

-- center after jump to the last line
keymap("n", "G", "Gzz", opts)

-- Delete to the end of the line
keymap("n", "<leader>de", "d$", opts)

-- open config file in a new tab
keymap("n", "<leader>ev", ":e $MYVIMRC<CR>", opts)

-- reload config file
keymap("n", "<leader>sv", ":source $MYVIMRC<CR>", opts)

-- navigate between buffers
keymap("n", "<leader><Left>", ":bprevious<CR>", opts)
keymap("n", "<leader><Right>", ":bnext<CR>", opts)
keymap("n", "<leader>gg", ":bfirst<CR>", opts)
keymap("n", "<leader>G", ":blast<CR>", opts)

-- switch panes with arrows
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)

-- show all buffers and let user choose one 
keymap("n", "<leader>i", ":ls<CR>:b<Space>", opts)

-- explorer
keymap("n", "<leader>e", ":Lex<CR>", opts)

-- indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("n", "<A-Down>", ":m .+1<CR>==gv", opts)
keymap("n", "<A-Up>", ":m .-2<CR>==gv", opts)
keymap("v", "p", '"_dP', opts)

-- move blocks of text up and down
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- show delete current buffer
keymap("n", "<leader>dd", ":bd<CR>", opts)

-- write current buffer
keymap("n", "<leader>w", ":write<CR>", opts)

-- navigate between buffers
keymap("n", "<leader><tab>", "<C-^>", opts)
