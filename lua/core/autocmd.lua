vim.api.nvim_create_autocmd({"VimEnter"}, {pattern = "*", command = "Limelight"})
vim.api.nvim_create_autocmd({"BufWinLeave"}, {pattern = "*", command = "highlight Normal guibg=#000000 ctermbg=black"})
 

