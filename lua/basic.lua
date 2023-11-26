vim.o.showmode = false
vim.wo.number = true
vim.wo.relativenumber = true

vim.o.clipboard = "unnamedplus"


vim.cmd [[
  augroup LuaSettings
    autocmd!
    autocmd FileType lua setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2
  augroup END
]]

vim.cmd([[
  augroup TypeScriptSettings
    autocmd!
    autocmd FileType typescript setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2
  augroup END
]])

vim.cmd([[
  augroup CSettings
    autocmd!
    autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4
  augroup END
]])
