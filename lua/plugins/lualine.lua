local M = {
  "nvim-lualine/lualine.nvim",
}

M.config = function ()
  require('lualine').setup {
    options = {
      theme = 'onedark'
    }
  }
end

return M
