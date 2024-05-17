-- autocmds
vim.api.nvim_create_autocmd('BufWritePost', { desc = 'Autoformat Python files', command = '!ruff format %', pattern = '*.py'})
vim.api.nvim_create_autocmd('BufWritePost', { desc = 'Autoformat Terraform files', command = '!terraform fmt %', pattern = '*.tf'})

-- leader configs
-- leader is set in ../init.lua
vim.api.nvim_set_keymap('x', '<leader>p', '"_dP', { noremap = true })

-- ufo remaps
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- native remaps
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })
