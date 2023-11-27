local M = {
  "simrat39/rust-tools.nvim",
}

M.config = function ()
  local rt = require("rust-tools")

  rt.setup({
    server = {
      on_attach = function(_, bufnr)
        -- Hover actions
        vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
        -- Code action groups
        vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
        vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
        vim.keymap.set("n", "gD", vim.lsp.buf.implementation, { buffer = bufnr })
        vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, { buffer = bufnr })
        vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, { buffer = bufnr })
        vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = bufnr })
        vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, { buffer = bufnr })
        vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, { buffer = bufnr })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set("n", "ga", vim.lsp.buf.code_action, { buffer = bufnr })
      end,
    },
  })
end

return M

