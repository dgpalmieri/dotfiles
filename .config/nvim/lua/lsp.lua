local lsp = require "lspconfig"
local coq = require "coq"

lsp.basedpyright.setup( coq.lsp_ensure_capabilities() )
lsp.rust_analyzer.setup( coq.lsp_ensure_capabilities() )


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(                 
    vim.lsp.diagnostic.on_publish_diagnostics, {                                      
        -- Disable signs                                                                
        signs = false,                                                                  
    }                                                                                 
)

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'py',
    callback = function()
        vim.lsp.start({
            name = 'basedpyright',
            cmd = {'basedpyright'},
            root_dir = vim.fs.dirname(vim.fs.find({'setup.py', 'pyproject.toml'}, { upward = true })[1]),
        })
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'rs',
    callback = function()
        vim.lsp.start({
            name = 'rust-analyzer',
            cmd = {'rust-analyzer'},
            root_dir = vim.fs.dirname(vim.fs.find({'Cargo.toml', 'Cargo.lock'}, { upward = true })[1]),
        })
    end,
})

vim.api.nvim_create_autocmd('FileType', {
    pattern = 'sh',
    callback = function()
        vim.lsp.start({
            name = 'bash-language-server',
            cmd = { 'bash-language-server', 'start' },
        })
    end,
})
