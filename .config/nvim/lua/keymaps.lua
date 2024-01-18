-- autocmds
vim.api.nvim_create_autocmd('BufWritePost', { desc = 'Autoformat Python files', command = '!black %', pattern = '*.py'})
vim.api.nvim_create_autocmd('BufWritePost', { desc = 'Autoformat Terraform files', command = '!terraform fmt %', pattern = '*.tf'})

-- leader configs
-- leader is set in ../init.lua
vim.api.nvim_set_keymap('x', '<leader>p', '"_dP', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>a', '<Plug>(coc-codeaction-line)', {})
vim.api.nvim_set_keymap('x', '<leader>a', '<Plug>(coc-codeaction-selected)', {})
vim.api.nvim_set_keymap('n', '<leader>ac', '<Plug>(coc-codeaction)', {})
vim.api.nvim_set_keymap('n', '<leader>qf', '<Plug>(coc-fix-current)', {})

-- ufo remaps
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)

-- native remaps
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true })

-- coc remaps
vim.api.nvim_set_keymap('i', '<Tab>', 'coc#pum#visible() ? coc#pum#confirm() : "<Tab>"', { expr = true, noremap = true })
