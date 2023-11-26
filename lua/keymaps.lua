-- nvim tree
vim.api.nvim_set_keymap('n', 'tr', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- nvim telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
