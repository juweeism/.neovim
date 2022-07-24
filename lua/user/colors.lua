local colorscheme = "dracula"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

    vim.o.termguicolors = true
    vim.o.background = "dark"
    vim.cmd [[
        hi Normal guibg=0
    ]]
