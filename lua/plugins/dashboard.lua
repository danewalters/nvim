local M = {
  "nvimdev/dashboard-nvim",
  event = 'VimEnter'
}

M.config = function ()
  require('dashboard').setup {}
end

return M
