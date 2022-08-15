-- 
-- check if option is global buffer or window
-- :h <option> 
--

local o = vim.o -- globals
local wo = vim.wo -- buffer
local bo = vim.bo -- window
local opt = vim.opt

o.pumheight = 5
o.termguicolors = true
o.scrolloff = 9
o.sidescrolloff = 9
o.showtabline = 2
o.guitablabel= "%N %t %M" 
o.hidden = true -- hides modified buffer 
o.confirm = true -- confirm before close buffer

opt.fillchars = {fold = " ", vert = " ", eob = " "}

wo.number = true
wo.relativenumber = true
wo.numberwidth = 4 
wo.wrap = false
wo.cursorline = true
wo.signcolumn = 'yes:1'

o.tabstop = 3
o.shiftwidth = 3
o.autoindent = true
o.smartindent = true
					
