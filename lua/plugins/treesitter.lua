local M = {
  'nvim-treesitter/nvim-treesitter',
}

M.build = function()
  require('nvim-treesitter.install').update({ with_sync = true })()
end

M.config = function()
  local configs = require('nvim-treesitter.configs')

  configs.setup({
    ensure_installed = { 'rust', 'lua', 'typescript', 'javascript', 'elixir', 'c', 'astro' },
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<CR>",
        node_incremental = "<CR>",
        node_decremental = "<BS>",
        scope_incremental = "<TAB>",
      },
    },
  })
end

return M
