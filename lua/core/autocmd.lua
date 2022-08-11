vim.api.nvim_create_autocmd({"VimEnter"}, {pattern = "*", command = "Limelight"})
vim.api.nvim_create_autocmd({"VimEnter"}, {pattern = "*", command = "NvimTreeToggle"})
vim.api.nvim_create_autocmd({"VimEnter"}, {pattern = "*", command = "hi Normal guibg=None ctermbg=NONE"})
vim.api.nvim_create_autocmd({"BufWinLeave"}, {pattern = "*", command = "highlight Normal guibg=NONE ctermbg=NONE"})
 

