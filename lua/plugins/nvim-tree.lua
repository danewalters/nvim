local M = {
  "nvim-tree/nvim-tree.lua",
}

M.version = "*"
M.lazy = false
M.config = function ()
  require("nvim-tree").setup {}
end

return M
