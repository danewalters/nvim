local M = {
  'saecki/crates.nvim',
  tag = 'v0.4.0'
}

M.config = function ()
  require('crates').setup{}
end

return M
