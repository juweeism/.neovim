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

opt.fillchars = {fold = " ", vert = " ", eob = " "}

wo.number = true
wo.relativenumber = true 
wo.numberwidth = 6 
wo.wrap = false
wo.cursorline = true

bo.tabstop = 3 
bo.shiftwidth = 3 


