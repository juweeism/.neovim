local map = vim.api.nvim_set_keymap	-- key mapping

map('n', '<Space>', '', {})
vim.g.mapleader = ' '

local opt = { noremap = true }

map("n", ";", ":", opt)

map("n", "nt", ":tabnew<CR>", opt)		-- new empty tab
map("n", "ss", ":update<CR>", opt)		-- save file without closing
map("n", "fn", ":w", opt)			-- set filename of new tab
map("n", "zz", ":q<CR>", opt)			-- easy quit
map('i', 'jj', '<ESC>', opt)			-- easy quit

map("v", "<", "<gv", opt)			-- indent left
map("v", ">", ">gv", opt)			-- indent right

map("v", "<E-j>", ":m .+1<CR>==", opt)		-- move text down 
map("v", "<E-k>", ":m .-2<CR>==", opt)		-- move text up

-- 	NAVIGATION 		-- 
map("n", "<up>", "<C-w><up>", opt)
map("n", "<down>", "<C-w><down>", opt)
map("n", "<left>", "<C-w><left>", opt)
map("n", "<right>", "<C-w><right>", opt)

map("x", "J", ":move '>+1<CR>gv-gv", opt)	-- move line block down 
map("x", "K", ":move '<-2<CR>gv-gv", opt)	-- move line block up

-- 	BUFFERS 		-- 
map("n", "E", ":enew<CR>", opt)
map("n", ">", ":bnext<CR>", opt)
map("n", "<", ":bprev<CR>", opt)

-- 	PLUGIN KEYS 	--
map("n", "00", ":Limelight!!<CR>", opt)			-- easy quit
map("n", "nn", ":NvimTreeToggle<CR>", opt)
map("n", "ff", ":Telescope find_files<CR>", opt)
