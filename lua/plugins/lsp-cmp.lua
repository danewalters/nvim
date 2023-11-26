local M = {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'saadparwaiz1/cmp_luasnip',
    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-nvim-lsp-signature-help',
  },
}

M.config = function()
  local cmp = require('cmp')

  -- Setting Complementary Menu Options
  vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
  vim.opt.shortmess = vim.opt.shortmess + {c = true}
  vim.api.nvim_set_option('updatetime', 300)

  -- Initialize cmp
  cmp.setup({
    snippet = {
      expand = function(args)
        -- Code Snippet Extension with LuaSnip
        require('luasnip').lsp_expand(args.body)
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<S-Tab>'] = cmp.mapping.select_prev_item(),
      ['<Tab>'] = cmp.mapping.select_next_item(),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Insert,
        select = true,
      }),
    },
    sources = {
      {name = 'nvim_lsp'},
      {name = 'nvim_lua'},
      {name = 'luasnip'}, -- Using LuaSnip only as a code snippet completion source
      {name = 'nvim_lsp_signature_help'},
      {name = 'buffer'},
      {name = 'path'},
      {name = "crates"},
    },
  })

  -- Complementary configuration of cmdline
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      {name = 'path'},
      {name = 'cmdline'},
    },
  })
end

return M

