-- autocmds
vim.api.nvim_create_autocmd('BufWritePost', { desc = 'Autoformat Python files', command = '!ruff format %', pattern = '*.py'})
vim.api.nvim_create_autocmd('BufWritePost', { desc = 'Autoformat Rust files', command = '!rustfmt %', pattern = '*.rs'})

-- leader configs
-- leader is set in ../init.lua
vim.keymap.set('x', '<leader>p', '"_dP', { noremap = true })
vim.keymap.set('n', '<leader>t', require('nvim-tree.api').tree.toggle, { noremap = true })

-- ufo remaps
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- native remaps
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })

-- code actions!
vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
